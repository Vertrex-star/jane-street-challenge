import argparse
import json
import re
import sys
from collections import defaultdict

try:
    import klayout.db as kdb
except ImportError:
    sys.exit("Missing dependency. Install with:\n  pip install klayout --break-system-packages")

CELL_NAME_RE = re.compile(
    r"^sky130_fd_sc_(?P<flavor>\w+?)__(?P<func>[a-z0-9]+?)_(?P<drive>\d+)$"
)
NON_FUNCTIONAL_FUNCS = {"decap", "fill", "diode", "tap", "tapvpwrvgnd"}


def is_functional(cell_name: str) -> bool:
    if not cell_name.startswith("sky130_fd_sc_"):
        return False
    m = CELL_NAME_RE.match(cell_name)
    if not m:
        return False
    return m.group("func") not in NON_FUNCTIONAL_FUNCS


def stable_name(cell: str, x: float, y: float) -> str:
    """Deterministic name shared with the netlist extractor."""
    return f"{cell}__x{x:.2f}_y{y:.2f}".replace(".", "p")


class UnionFind:
    def __init__(self, n):
        self.parent = list(range(n))

    def find(self, x):
        while self.parent[x] != x:
            self.parent[x] = self.parent[self.parent[x]]
            x = self.parent[x]
        return x

    def union(self, a, b):
        ra, rb = self.find(a), self.find(b)
        if ra != rb:
            self.parent[ra] = rb


def collect_instances(gds_path: str, top_name: str | None):
    layout = kdb.Layout()
    layout.read(gds_path)
    top = layout.cell(top_name) if top_name else layout.top_cell()
    if top is None:
        sys.exit(f"Top cell '{top_name}' not found.")

    instances = []  # (stable_name, cell_name, x_um, y_um)
    it = kdb.RecursiveInstanceIterator(layout, top)
    while not it.at_end():
        cell_name = it.inst_cell().name
        if is_functional(cell_name):
            abs_trans = it.inst_dtrans()
            x_um, y_um = abs_trans.disp.x, abs_trans.disp.y
            name = stable_name(cell_name, x_um, y_um)
            instances.append((name, cell_name, x_um, y_um))
        it.next()
    return instances


def cluster(instances, threshold_um: float):
    n = len(instances)
    uf = UnionFind(n)

    # O(n^2) is fine for a few thousand instances (typical puzzle-scale designs)
    for i in range(n):
        xi, yi = instances[i][2], instances[i][3]
        for j in range(i + 1, n):
            xj, yj = instances[j][2], instances[j][3]
            if (xi - xj) ** 2 + (yi - yj) ** 2 <= threshold_um ** 2:
                uf.union(i, j)

    groups = defaultdict(list)
    for i in range(n):
        groups[uf.find(i)].append(instances[i])
    return list(groups.values())


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("gds")
    ap.add_argument("--top", default=None)
    ap.add_argument("--threshold", type=float, default=5.0,
                    help="Clustering distance in microns")
    ap.add_argument("--out", default="clusters.json")
    ap.add_argument("--map", default="instance_map.json",
                    help="Flat name -> cluster_id + placement map")
    ap.add_argument("--min-size", type=int, default=2,
                    help="Only report clusters with at least this many instances")
    args = ap.parse_args()

    instances = collect_instances(args.gds, args.top)
    print(f"Collected {len(instances)} functional standard-cell instances with placement data.")

    if not instances:
        sys.exit("No functional instances found -- check --top and that this GDS has placement data.")

    xs = [i[2] for i in instances]
    ys = [i[3] for i in instances]
    print(f"Die extent: x=[{min(xs):.2f}, {max(xs):.2f}] um, y=[{min(ys):.2f}, {max(ys):.2f}] um")

    # Nearest-neighbour distance stats to help pick a threshold
    sample = instances[: min(200, len(instances))]
    nn_dists = []
    for i, (_, _, x1, y1) in enumerate(sample):
        best = None
        for j, (_, _, x2, y2) in enumerate(instances):
            if i == j:
                continue
            d2 = (x1 - x2) ** 2 + (y1 - y2) ** 2
            if best is None or d2 < best:
                best = d2
        if best is not None:
            nn_dists.append(best ** 0.5)
    if nn_dists:
        nn_dists.sort()
        print(
            f"Nearest-neighbor distance (sampled): min={nn_dists[0]:.3f} um, "
            f"median={nn_dists[len(nn_dists) // 2]:.3f} um, max={nn_dists[-1]:.3f} um"
        )
        print(f"(current --threshold is {args.threshold} um -- adjust based on the above)\n")

    clusters = cluster(instances, args.threshold)
    clusters.sort(key=len, reverse=True)

    report = []
    name_to_cluster = {}
    shown = 0

    for cl in clusters:
        if len(cl) < args.min_size:
            # still record singletons in the map (cluster_id = -1)
            for name, cell, x, y in cl:
                name_to_cluster[name] = {
                    "cluster_id": -1,
                    "cell": cell,
                    "x_um": x,
                    "y_um": y,
                }
            continue

        shown += 1
        xs_c = [c[2] for c in cl]
        ys_c = [c[3] for c in cl]
        cell_types = defaultdict(int)
        inst_list = []
        for name, cell, x, y in cl:
            cell_types[cell] += 1
            inst_list.append({"name": name, "cell": cell, "x_um": x, "y_um": y})
            name_to_cluster[name] = {
                "cluster_id": shown,
                "cell": cell,
                "x_um": x,
                "y_um": y,
            }

        print(
            f"Cluster #{shown}: {len(cl)} instances, "
            f"bbox=[{min(xs_c):.2f},{min(ys_c):.2f}] to [{max(xs_c):.2f},{max(ys_c):.2f}] um"
        )
        for cell_name, count in sorted(cell_types.items(), key=lambda kv: -kv[1]):
            print(f"    {count:3d}x  {cell_name}")

        report.append(
            {
                "cluster_id": shown,
                "size": len(cl),
                "bbox_um": [min(xs_c), min(ys_c), max(xs_c), max(ys_c)],
                "cell_type_counts": dict(cell_types),
                "instances": inst_list,
            }
        )

    with open(args.out, "w") as f:
        json.dump(report, f, indent=2)
    with open(args.map, "w") as f:
        json.dump(name_to_cluster, f, indent=2)

    print(
        f"\n{shown} cluster(s) with >= {args.min_size} instances written to {args.out}"
    )
    print(f"Full name -> cluster map written to {args.map}")
    print(
        f"({len(clusters) - shown} smaller/singleton clusters omitted from the "
        f"cluster report but still present in the map with cluster_id=-1)."
    )


if __name__ == "__main__":
    main()
