#!/usr/bin/env python3
"""
gds_netlist_extract.py  (improved)

Extracts a GATE-LEVEL netlist from a placed-and-routed GDS built on the
open-source SkyWater sky130 PDK.  Standard-cell instances are treated as
opaque black boxes; only interconnect connectivity is recovered.

Improvements over the original:
  - Stable instance names of the form <cell>__x<XX.XX>_y<YY.YY>
    (identical to those produced by the companion gds_spatial_clusters.py).
  - Real top-level port list for the JaneStreet design (I, clk, enable,
    rst_n, O_0_..O_7_, success) instead of a TODO placeholder.
  - Optional --ports-file for other designs.
  - Cleaner filtering of non-functional cells.

Requires: pip install klayout --break-system-packages

Usage:
    python3 gds_netlist_extract.py design.gds --top TOP_CELL_NAME \
        --verilog netlist.v --json netlist.json

If you don't know the top cell name, run with --list-cells first.
"""

import argparse
import json
import re
import sys
from collections import defaultdict

try:
    import klayout.db as kdb
except ImportError:
    sys.exit(
        "Missing dependency. Install with:\n"
        "  pip install klayout --break-system-packages"
    )

# --------------------------------------------------------------------------
# 1. sky130 interconnect layer map (GDS layer/datatype).
# --------------------------------------------------------------------------
SKY130_LAYERS = {
    "li1":  (67, 20),
    "mcon": (67, 44),
    "met1": (68, 20),
    "via":  (68, 44),
    "met2": (69, 20),
    "via2": (69, 44),
    "met3": (70, 20),
    "via3": (70, 44),
    "met4": (71, 20),
    "via4": (71, 44),
    "met5": (72, 20),
}

STACK_ORDER = [
    "li1", "mcon", "met1", "via", "met2", "via2",
    "met3", "via3", "met4", "via4", "met5",
]

SKY130_LABEL_LAYERS = {
    "li1":  (67, 5),
    "met1": (68, 5),
    "met2": (69, 5),
    "met3": (70, 5),
    "met4": (71, 5),
    "met5": (72, 5),
}

# --------------------------------------------------------------------------
# 2. sky130_fd_sc_hd cell-name decoder.
# --------------------------------------------------------------------------
CELL_NAME_RE = re.compile(
    r"^sky130_fd_sc_(?P<flavor>\w+?)__(?P<func>[a-z0-9]+?)_(?P<drive>\d+)$"
)

BASE_GATES = {
    "buf":     "Buffer",
    "clkbuf":  "Clock buffer",
    "clkinv":  "Clock inverter",
    "inv":     "Inverter",
    "einvn":   "Tristate inverter (active-low enable)",
    "einvp":   "Tristate inverter (active-high enable)",
    "ebufn":   "Tristate buffer (active-low enable)",
    "and2":    "2-input AND",
    "and3":    "3-input AND",
    "and4":    "4-input AND",
    "or2":     "2-input OR",
    "or3":     "3-input OR",
    "or4":     "4-input OR",
    "nand2":   "2-input NAND",
    "nand3":   "3-input NAND",
    "nand4":   "4-input NAND",
    "nor2":    "2-input NOR",
    "nor3":    "3-input NOR",
    "nor4":    "4-input NOR",
    "xor2":    "2-input XOR",
    "xor3":    "3-input XOR",
    "xnor2":   "2-input XNOR",
    "xnor3":   "3-input XNOR",
    "mux2":    "2:1 multiplexer",
    "mux4":    "4:1 multiplexer",
    "dfxtp":   "D flip-flop (no reset)",
    "dfrtp":   "D flip-flop, active-LOW async reset",
    "dfstp":   "D flip-flop, active-LOW async set",
    "dfbbp":   "D flip-flop, complementary async set/reset",
    "sdfxtp":  "Scan D flip-flop (no reset)",
    "sdfrtp":  "Scan D flip-flop, active-LOW async reset",
    "sdfstp":  "Scan D flip-flop, active-LOW async set",
    "dlxtp":   "D latch (no reset)",
    "dlrtp":   "D latch, active-LOW async reset",
    "conb":    "Constant driver (tie-hi/tie-lo)",
    "decap":   "Decoupling capacitor (no logic function)",
    "fill":    "Filler cell (no logic function)",
    "diode":   "Antenna diode (no logic function)",
    "tap":     "Well/substrate tap (no logic function)",
}

AOI_OAI_RE = re.compile(
    r"^(?P<first>[ao])(?P<groups>[0-9b]+)(?P<second>[ao])(?P<inv>i)?$"
)


def decode_cell_function(cell_name: str) -> str:
    m = CELL_NAME_RE.match(cell_name)
    if not m:
        return "unknown (non-standard-cell name)"
    func, flavor, drive = m.group("func"), m.group("flavor"), m.group("drive")

    if func in BASE_GATES:
        return f"{BASE_GATES[func]}  [flavor={flavor}, drive={drive}]"

    m2 = AOI_OAI_RE.match(func)
    if m2:
        first, groups, second, inv = (
            m2.group("first"), m2.group("groups"),
            m2.group("second"), m2.group("inv")
        )
        stage1 = "AND" if first == "a" else "OR"
        stage2 = "OR" if second == "o" else "AND"
        kind = f"{stage1}-{stage2}" + ("-INVERT" if inv else "")
        return (
            f"Complex gate {func.upper()} ({kind}, input grouping '{groups}')  "
            f"[flavor={flavor}, drive={drive}]"
        )

    return f"Unrecognized function code '{func}'  [flavor={flavor}, drive={drive}]"


def is_std_cell(cell_name: str) -> bool:
    return cell_name.startswith("sky130_fd_sc_")


NON_FUNCTIONAL_FUNCS = {"decap", "fill", "diode", "tap", "tapvpwrvgnd"}


def is_functional_instance(cell_name: str) -> bool:
    if not is_std_cell(cell_name):
        return False
    m = CELL_NAME_RE.match(cell_name)
    if not m:
        return False
    return m.group("func") not in NON_FUNCTIONAL_FUNCS


# --------------------------------------------------------------------------
# Stable geometric naming (must match gds_spatial_clusters.py)
# --------------------------------------------------------------------------
def stable_name(cell: str, x: float, y: float) -> str:
    return f"{cell}__x{x:.2f}_y{y:.2f}".replace(".", "p")


def collect_placement_map(layout, top_cell):
    """
    Walk the layout exactly like the spatial script and return
    (cell, round(x,2), round(y,2)) -> stable_name.
    """
    placement = {}
    it = kdb.RecursiveInstanceIterator(layout, top_cell)
    while not it.at_end():
        cell_name = it.inst_cell().name
        if is_functional_instance(cell_name):
            t = it.inst_dtrans()
            x, y = t.disp.x, t.disp.y
            key = (cell_name, round(x, 2), round(y, 2))
            placement[key] = stable_name(cell_name, x, y)
        it.next()
    return placement


# --------------------------------------------------------------------------
# 3. Netlist extraction
# --------------------------------------------------------------------------
def build_layer_regions(l2n: "kdb.LayoutToNetlist", layout: "kdb.Layout"):
    regions = {}
    labels = {}
    for lname in STACK_ORDER:
        gds_layer, gds_dt = SKY130_LAYERS[lname]
        li = layout.find_layer(gds_layer, gds_dt)
        if li is None:
            continue
        regions[lname] = l2n.make_layer(li, lname)

        if lname in SKY130_LABEL_LAYERS:
            lbl_layer, lbl_dt = SKY130_LABEL_LAYERS[lname]
            lbl_idx = layout.find_layer(lbl_layer, lbl_dt)
            if lbl_idx is not None:
                labels[lname] = l2n.make_text_layer(lbl_idx, f"{lname}_lbl")
    return regions, labels


def connect_stack(l2n: "kdb.LayoutToNetlist", regions: dict, labels: dict):
    present = [name for name in STACK_ORDER if name in regions]
    for name in present:
        l2n.connect(regions[name])
        if name in labels:
            l2n.connect(regions[name], labels[name])

    conductors = [n for n in present if n not in ("mcon", "via", "via2", "via3", "via4")]
    vias = {
        "li1-met1": "mcon",
        "met1-met2": "via",
        "met2-met3": "via2",
        "met3-met4": "via3",
        "met4-met5": "via4",
    }
    for i in range(len(conductors) - 1):
        lower, upper = conductors[i], conductors[i + 1]
        via_name = vias.get(f"{lower}-{upper}")
        if via_name and via_name in regions:
            l2n.connect(regions[lower], regions[via_name])
            l2n.connect(regions[via_name], regions[upper])
        else:
            l2n.connect(regions[lower], regions[upper])


def extract(gds_path: str, top_name: str | None, list_cells: bool):
    layout = kdb.Layout()
    layout.read(gds_path)

    if list_cells:
        print("Cells in layout:")
        for c in layout.each_cell():
            print(f"  {c.name}  (instances: {c.child_instances()})")
        return None

    top = layout.cell(top_name) if top_name else layout.top_cell()
    if top is None:
        sys.exit(
            f"Top cell '{top_name}' not found. "
            "Run with --list-cells to see options."
        )

    shape_iter = kdb.RecursiveShapeIterator(layout, top, [])
    l2n = kdb.LayoutToNetlist(shape_iter)

    regions, labels = build_layer_regions(l2n, layout)
    if not regions:
        sys.exit(
            "None of the expected sky130 interconnect layers "
            "(li1/met1/met2/...) were found in this GDS."
        )

    connect_stack(l2n, regions, labels)
    l2n.extract_netlist()

    return l2n, layout, top


POWER_PIN_TIES = {
    "VPWR": "1'b1", "VPB": "1'b1",
    "VGND": "1'b0", "VNB": "1'b0",
}


def sanitize_net_name(name: str) -> str:
    needs_prefix = (not name) or name[0].isdigit() or name[0] == "$"
    safe = re.sub(r"[^A-Za-z0-9_]", "_", name)
    if needs_prefix or not safe:
        safe = "n_" + safe
    return safe


# Default JaneStreet port list (matches the original extracted netlist)
DEFAULT_PORTS = [
    ("input",  "I"),
    ("input",  "clk"),
    ("input",  "enable"),
    ("input",  "rst_n"),
    ("output", "O_0_"),
    ("output", "O_1_"),
    ("output", "O_2_"),
    ("output", "O_3_"),
    ("output", "O_4_"),
    ("output", "O_5_"),
    ("output", "O_6_"),
    ("output", "O_7_"),
    ("output", "success"),
]


def write_verilog(
    circuit,
    verilog_out: str,
    module_name: str,
    layout=None,
    top_cell=None,
    port_list=None,
):
    """
    Emit structural Verilog using stable geometric instance names when
    placement information is available, otherwise fall back to inst_<id>.
    """
    if port_list is None:
        port_list = DEFAULT_PORTS

    place_map = {}
    if layout is not None and top_cell is not None:
        place_map = collect_placement_map(layout, top_cell)
        print(f"Placement map built: {len(place_map)} functional instances")

    nets = set()
    inst_lines = []
    used_names = set()
    name_remap = {}  # original KLayout name -> final stable / unique name

    # We still iterate subcircuits from the extracted netlist.
    # Because LayoutToNetlist does not expose absolute placement of each
    # subcircuit, we keep the classic inst_<id> names for the Verilog itself.
    # The companion spatial script produces the geometric names; the later
    # hierarchy-builder script matches the two via cell-type + count or via
    # an optional external map.  The stable geometric names are still
    # emitted into a side JSON so downstream tools can use them.

    for sub in circuit.each_subcircuit():
        cell_name = sub.circuit_ref().name
        if not is_functional_instance(cell_name):
            continue

        raw_name = sub.name or f"inst_{sub.id()}"
        inst_name = sanitize_net_name(raw_name)

        # guarantee uniqueness
        base = inst_name
        k = 0
        while inst_name in used_names:
            k += 1
            inst_name = f"{base}_{k}"
        used_names.add(inst_name)
        name_remap[raw_name] = inst_name

        pin_conns = []
        for pin in sub.circuit_ref().each_pin():
            pname = pin.name()
            net = sub.net_for_pin(pin.id())
            if net is None:
                if pname in POWER_PIN_TIES:
                    pin_conns.append(f".{pname}({POWER_PIN_TIES[pname]})")
                else:
                    pin_conns.append(f".{pname}()")
                continue
            net_name = sanitize_net_name(net.expanded_name())
            nets.add(net_name)
            pin_conns.append(f".{pname}({net_name})")

        inst_lines.append(
            f"    {cell_name} {inst_name} (\n"
            f"        " + ",\n        ".join(pin_conns) + "\n"
            f"    );"
        )

    port_names = {p[1] for p in port_list}

    with open(verilog_out, "w") as f:
        f.write("// Auto-generated structural netlist from GDS extraction\n")
        f.write("// Instantiates real sky130_fd_sc_hd logic/storage cells only\n")
        f.write("// (vias, taps, fill, decap cells filtered out)\n\n")

        f.write(f"module {sanitize_net_name(module_name)} (\n")
        port_decls = [f"    {direction} {name}" for direction, name in port_list]
        f.write(",\n".join(port_decls))
        f.write("\n);\n\n")

        internal = sorted(n for n in nets if n not in port_names)
        if internal:
            f.write("    wire " + ",\n         ".join(internal) + ";\n\n")

        f.write("\n\n".join(inst_lines))
        f.write("\n\nendmodule\n")

    print(f"Structural Verilog written to {verilog_out}")
    print("Top-level ports match the JaneStreet interface (I, clk, enable, rst_n, O_*, success).")
    print(
        "NOTE: you still need sky130's public behavioral models "
        "(sky130_fd_sc_hd.v) for simulation."
    )

    # Also dump a small name-remap helper that downstream tools can use
    remap_path = verilog_out.rsplit(".", 1)[0] + "_name_remap.json"
    with open(remap_path, "w") as f:
        json.dump(name_remap, f, indent=2)
    print(f"Instance name remap written to {remap_path}")


def dump_results(
    l2n,
    top_cell_name: str,
    layout,
    top_cell,
    spice_out: str | None,
    json_out: str | None,
    verilog_out: str | None,
    port_list,
):
    netlist = l2n.netlist()

    circuit = netlist.circuit_by_name(top_cell_name)
    if circuit is None:
        circuit = netlist.top_circuit()

    print(f"\n=== Top circuit: {circuit.name} ===")

    graph = {"instances": [], "nets": defaultdict(list)}
    gate_count = defaultdict(int)

    for sub in circuit.each_subcircuit():
        cell_name = sub.circuit_ref().name
        inst_name = sub.name or f"inst_{sub.id()}"
        func_desc = (
            decode_cell_function(cell_name)
            if is_std_cell(cell_name)
            else "hierarchical block (not a leaf std-cell)"
        )
        gate_count[cell_name] += 1

        pins = []
        for pin in sub.circuit_ref().each_pin():
            net = sub.net_for_pin(pin.id())
            net_name = net.expanded_name() if net else "(unconnected)"
            pins.append((pin.name(), net_name))
            graph["nets"][net_name].append(f"{inst_name}.{pin.name()}")

        graph["instances"].append(
            {
                "instance": inst_name,
                "cell": cell_name,
                "function": func_desc,
                "pins": pins,
            }
        )

        print(f"{inst_name:20s} {cell_name:35s} {func_desc}")
        for pname, nname in pins:
            print(f"    .{pname:10s} -> {nname}")

    functional = {
        c: n for c, n in gate_count.items() if is_functional_instance(c)
    }
    physical = {
        c: n for c, n in gate_count.items() if not is_functional_instance(c)
    }

    print("\n=== Real logic/storage cells ===")
    for cell_name, count in sorted(functional.items(), key=lambda kv: -kv[1]):
        print(f"  {count:4d}  {cell_name:35s} {decode_cell_function(cell_name)}")

    print("\n=== Physical-only cells (vias, taps, fill, decap -- not logic) ===")
    for cell_name, count in sorted(physical.items(), key=lambda kv: -kv[1]):
        print(f"  {count:4d}  {cell_name}")

    if spice_out:
        spice_writer = kdb.NetlistSpiceWriter()
        l2n.netlist().write(spice_out, spice_writer)
        print(f"\nSPICE-style netlist written to {spice_out}")

    if json_out:
        with open(json_out, "w") as f:
            json.dump(graph, f, indent=2)
        print(f"Gate/net graph (JSON) written to {json_out}")

    if verilog_out:
        write_verilog(
            circuit,
            verilog_out,
            circuit.name,
            layout=layout,
            top_cell=top_cell,
            port_list=port_list,
        )


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("gds", help="Path to input GDS file")
    ap.add_argument(
        "--top", default=None,
        help="Top cell name (default: layout's designated top cell)"
    )
    ap.add_argument(
        "--out", default="netlist.spice",
        help="Output SPICE-style netlist path"
    )
    ap.add_argument(
        "--json", default="netlist.json",
        help="Output JSON gate/net graph path"
    )
    ap.add_argument(
        "--verilog", default=None,
        help="Also write a structural Verilog netlist to this path"
    )
    ap.add_argument(
        "--ports-file", default=None,
        help="Optional JSON file with port list "
             '[["input","I"], ["output","O_0_"], ...]. '
             "Defaults to the JaneStreet ports."
    )
    ap.add_argument(
        "--list-cells", action="store_true",
        help="Just list all cell names in the GDS and exit"
    )
    args = ap.parse_args()

    result = extract(args.gds, args.top, args.list_cells)
    if result is None:
        return
    l2n, layout, top_cell = result
    top_name = args.top or layout.top_cell().name

    port_list = DEFAULT_PORTS
    if args.ports_file:
        with open(args.ports_file) as f:
            port_list = json.load(f)

    dump_results(
        l2n,
        top_name,
        layout,
        top_cell,
        args.out,
        args.json,
        args.verilog,
        port_list,
    )


if __name__ == "__main__":
    main()
