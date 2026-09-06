import re
import sys
import time
from collections import defaultdict, deque

sys.path.insert(0, '.')
from cell_logic import cell_eval
from cnf_builder import CNFBuilder
from pysat.solvers import Glucose3

TARGET_NET = 'success'
NUM_CYCLES = 200          # generous horizon; success turns out to need 122
FLOP_TYPES = {'sky130_fd_sc_hd__dfrtp_2', 'sky130_fd_sc_hd__dfxtp_2', 'sky130_fd_sc_hd__dfstp_2'}


def parse_netlist(path):
    """Flatten every primitive gate instance in the file into one list,
    regardless of which cluster_N module it's textually inside."""
    with open(path) as f:
        text = f.read()

    inst_pattern = re.compile(r'(sky130_fd_sc_hd__\w+)\s+(\w+)\s*\(([^;]*?)\)\s*;', re.S)
    OUTPUT_PIN_NAMES = {'Q', 'X', 'Y'}

    instances = []
    for m in inst_pattern.finditer(text):
        celltype, instname, body = m.group(1), m.group(2), m.group(3)
        pins = dict(re.findall(r'\.(\w+)\s*\(\s*([\w\[\]]+)\s*\)', body))
        if celltype == 'sky130_fd_sc_hd__conb_1':
            outputs = {'HI': pins.get('HI'), 'LO': pins.get('LO')}
            inputs = {}
        else:
            outputs = {p: n for p, n in pins.items() if p in OUTPUT_PIN_NAMES}
            inputs = {p: n for p, n in pins.items() if p not in OUTPUT_PIN_NAMES}
        instances.append({'celltype': celltype, 'name': instname,
                           'inputs': inputs, 'outputs': outputs})
    return instances


def backward_trace(instances, target_net):
    """BFS backward from target_net through the driver graph. Returns the
    set of instance indices in its complete fan-in cone."""
    driver_map = defaultdict(list)
    for idx, inst in enumerate(instances):
        for pin, net in inst['outputs'].items():
            if net:
                driver_map[net].append((idx, pin))

    visited_nets = {target_net}
    visited_insts = set()
    queue = deque([target_net])
    while queue:
        net = queue.popleft()
        for idx, outpin in driver_map.get(net, []):
            if idx not in visited_insts:
                visited_insts.add(idx)
                for inpin, innet in instances[idx]['inputs'].items():
                    if innet and innet not in visited_nets:
                        visited_nets.add(innet)
                        queue.append(innet)
    return visited_insts


def topological_sort(instances, cone_idx):
    """Split the cone into flip-flops / constants / combinational gates,
    then topologically order the combinational ones. Also injects the
    n__1029 feedback gate (confirmed: n__1029 = ~n__686 & ~n__982 & n__919
    & n__802, i.e. purely a function of cluster_success's own outputs)."""
    cone = [instances[i] for i in sorted(cone_idx)]
    flops = [inst for inst in cone if inst['celltype'] in FLOP_TYPES]
    constants = [inst for inst in cone if inst['celltype'] == 'sky130_fd_sc_hd__conb_1']
    comb = [inst for inst in cone if inst['celltype'] not in FLOP_TYPES
            and inst['celltype'] != 'sky130_fd_sc_hd__conb_1']

    if any(inst['inputs'].get('B_N') == 'n__1029' or 'n__1029' in inst['inputs'].values()
           for inst in comb):
        comb.append({
            'celltype': 'sky130_fd_sc_hd__and4bb_2',
            'name': 'inst_297_synthetic_feedback',
            'inputs': {'A_N': 'n__686', 'B_N': 'n__982', 'C': 'n__919', 'D': 'n__802'},
            'outputs': {'X': 'n__1029'},
        })

    register_out_nets = set()
    for inst in flops:
        register_out_nets.update(inst['outputs'].values())

    available = set(register_out_nets)
    available.update(['I', 'clk', 'enable', 'rst_n'])
    for inst in constants:
        available.update(inst['outputs'].values())

    remaining = list(comb)
    topo_order = []
    while remaining:
        progressed = False
        still_remaining = []
        for inst in remaining:
            needed = [v for v in inst['inputs'].values() if v]
            if all(n in available for n in needed):
                topo_order.append(inst)
                available.update(v for v in inst['outputs'].values() if v)
                progressed = True
            else:
                still_remaining.append(inst)
        remaining = still_remaining
        if not progressed and remaining:
            missing = set()
            for inst in remaining:
                for n in inst['inputs'].values():
                    if n and n not in available:
                        missing.add(n)
            raise RuntimeError(f"topological sort stuck; unresolved nets: "
                                f"{sorted(missing)[:20]} ({len(remaining)} left)")

    return flops, constants, topo_order


def unroll_and_solve(flops, constants, topo_order, num_cycles):
    b = CNFBuilder()

    const_nets = {}
    for inst in constants:
        outs = cell_eval(inst['celltype'], {}, b)
        for pin, net in inst['outputs'].items():
            const_nets[net] = outs[pin]

    # every dfrtp_2/dfstp_2/dfxtp_2 flop in cluster_success's cone happens to
    # be dfrtp_2 (reset type), so post-reset state is deterministically 0
    reg_state = {}
    for inst in flops:
        for net in inst['outputs'].values():
            reg_state[net] = b.FALSE

    I_vars = []
    success_at_cycle = []
    t0 = time.time()
    for cycle in range(num_cycles):
        I_lit = b.new_var()
        I_vars.append(I_lit)

        net_values = dict(reg_state)
        net_values.update(const_nets)
        net_values['I'] = I_lit
        net_values['enable'] = b.TRUE

        for inst in topo_order:
            pins = {}
            for pin_name, net in inst['inputs'].items():
                if net is None:
                    continue
                pins[pin_name] = net_values[net]
            outs = cell_eval(inst['celltype'], pins, b)
            for pin_name, net in inst['outputs'].items():
                if net:
                    net_values[net] = outs[pin_name]

        new_reg_state = {}
        for inst in flops:
            d_net = inst['inputs']['D']
            q_net = inst['outputs']['Q']
            new_reg_state[q_net] = net_values[d_net]
        reg_state = new_reg_state
        success_at_cycle.append(reg_state[TARGET_NET])

        if (cycle + 1) % 25 == 0 or cycle == num_cycles - 1:
            print(f"  unrolled cycle {cycle+1}/{num_cycles}  "
                  f"(vars={b.nvars}, clauses={len(b.clauses)}, t={time.time()-t0:.1f}s)")

    print(f"\nUnrolling complete: {b.nvars} variables, {len(b.clauses)} clauses, "
          f"{time.time()-t0:.1f}s")

    any_success = b.or_(*success_at_cycle)
    b.force(any_success)

    print(f"\nConstraint: {TARGET_NET} = 1 at ANY point within {num_cycles} cycles. Solving...")
    t1 = time.time()
    with Glucose3(bootstrap_with=b.clauses) as solver:
        sat = solver.solve()
        print(f"Solve time: {time.time()-t1:.1f}s  Result: {'SAT' if sat else 'UNSAT'}")
        if not sat:
            return None, None
        model = solver.get_model()
        model_set = set(model)
        bits = ['1' if lit in model_set else '0' for lit in I_vars]
        first_trigger = next(i for i, lit in enumerate(success_at_cycle) if lit in model_set)
        return ''.join(bits), first_trigger


def main():
    if len(sys.argv) != 2:
        print("usage: python3 find_solution.py <netlist.v>")
        sys.exit(1)

    path = sys.argv[1]
    print(f"Parsing {path} ...")
    instances = parse_netlist(path)
    print(f"Parsed {len(instances)} primitive gate instances total")

    print(f"\nBackward-tracing from '{TARGET_NET}' ...")
    cone_idx = backward_trace(instances, TARGET_NET)
    print(f"Fan-in cone: {len(cone_idx)} instances")

    print(f"\nTopologically sorting the cone ...")
    flops, constants, topo_order = topological_sort(instances, cone_idx)
    print(f"  {len(flops)} flip-flops, {len(constants)} constants, "
          f"{len(topo_order)} combinational gates ordered")

    print(f"\nUnrolling across up to {NUM_CYCLES} cycles and solving ...")
    bitstring, first_trigger = unroll_and_solve(flops, constants, topo_order, NUM_CYCLES)

    if bitstring is None:
        print(f"\nUNSAT: {TARGET_NET} is unreachable within {NUM_CYCLES} cycles.")
        return

    minimal = bitstring[:first_trigger + 1]
    print(f"\n{TARGET_NET} first goes HIGH at cycle index {first_trigger} "
          f"(i.e. after {first_trigger + 1} bits of I)")
    print(f"\nMinimal winning I sequence ({len(minimal)} bits):")
    print(minimal)

    with open('solution.txt', 'w') as f:
        f.write(minimal + '\n')
    print("\nWritten to solution.txt")


if __name__ == '__main__':
    main()
