# Jane Street ASIC Reverse Engineering Challenge

Reverse engineering an ASIC released as a puzzle, starting from nothing but a GDS layout and working all the way up to a SAT derived winning input sequence.

The chip takes a single serial input bit per clock cycle and produces an 8 bit ASCII output stream plus a `success` flag. Feed it the wrong sequence and it spells out `TRY AGN`. Feed it the right one, and after 122 clock pulses `success` latches high and the ASCII generator spells out the solution.

Full write-up: [`docs/writeup.pdf`](docs/writeup.pdf)

## Result

```
(* TWO STARS *)
```

Reached with this 122 bit input sequence (bit 0 applied first):

```
0000000101010000100000000000010101010000000000001010000001000
0010000001000001010000100000001000000100000100100010100000000
```

## Approach

1. **Netlist extraction:** A GDS file only contains geometry: polygons, layers, and cell placements. A netlist extractor walks every placed instance, matches it against the `sky130_fd_sc_hd` standard cell library, and traces metal and via layers to recover connectivity, producing a structural Verilog netlist of around 700 gates with no grouping or hierarchy.
2. **Module reconstruction:** Every unique standard cell (flip flops, NAND, NOR and XOR gates, complex AND OR INVERT cells, clock buffers, etc.) was implemented by hand in Verilog so the design could be simulated in Quartus Prime and ModelSim, rather than generated automatically.
3. **Spatial clustering:** Place and route tools tend to keep related logic physically close together. Using the x/y coordinates embedded in the GDS file, a Python script grouped the flat netlist into 19 spatial clusters (proximity threshold 5.5), turning around 700 undifferentiated gates into something a person could actually reason about.
4. **Functional grouping:** Testing individual clusters in isolation showed clusters 2, 4, 5, 14, and 15 were disconnected from the rest of the design except for the `success` pin; these form the ASCII character generator and can be treated as a black box. The remaining logic, roughly two thirds of the design, drives `success`.
5. **Isolating the success block:** Tracing every gate feeding `success` back to its source produced a fully bounded sub circuit with exactly four external inputs (`I`, `clk`, `enable`, `rst_n`) and one internal feedback net. This block behaves like a large obfuscated comparator: some accumulated internal state is checked against a target, and everything else falls through to a default `TRY AGN`.
6. **SAT solving:** With the success block fully isolated and traced, not skipped past, a Tseitin transformation encodes every gate as CNF, unrolled across 122 clock cycles (around 66k variables, several hundred thousand clauses). A SAT solver is then asked whether any assignment of the free input bits makes `success = 1`, turning "guess the input" into "solve the equation."
7. **Debugging a real netlist ghost:** The first candidate solution resolved to `X` instead of `0`/`1`. Root cause: a net name collision (`n_1495`) between two unrelated signals split across a clustering boundary during a legal but incomplete optimisation, where an inverter with a single consumer got folded into that consumer without ever promoting its source to a module output port.

See the full write-up for the boolean derivation of the `success` flip-flop, the off-by-one on the "121 vs 122 cycle" assumption, and the net-collision bug in detail.

## PCB implementation of the warmup puzzle

Since PCB design is what I actually spend most of my time on, I couldn't resist taking the warmup puzzle (the simpler circuit given as a reference before tackling the full ASIC) and building it out as a real hardware schematic rather than leaving it purely as a simulated netlist.

The board is USB-C powered, stepping 5V down to 3.3V for the logic, with its own local clock oscillator generating the CLK signal for the design. Both input bit streams are shifted in through two banks of D type shift registers, with an NPN transistor and pull up resistor added on every stage so each bit in the shift chain can be probed and observed on real hardware rather than just in a simulator. Downstream of the shift registers sit a pair of adder ICs and a final AND/OR logic block that combines everything down into the single output pin, `F`, mirroring the comparator style logic that turned up in the ASIC's success path.

It's mostly a fun side project rather than something needed to solve the challenge, but going from "here's a Verilog netlist that behaves this way" to "here's a schematic that would actually behave this way on copper" was a good excuse to sanity check my own understanding of the warmup logic.

## Tools used

- Quartus Prime
- Verilog
- ModelSim
- Python (netlist/GDS parsing, spatial clustering)
- A SAT solver (Tseitin/CNF encoding)

## Easter eggs

- All zero input → `EMPTY SKY`
- All one input → `BIG BANG`
- Invalid/incomplete input → `TRY AGN`
- The date embedded in the puzzle corresponds to the 2016 UTC leap second.

## Repo structure

```
.
├── docs/           # Write-up (PDF/markdown) and diagrams
├── rtl/            # Verilog modules for each standard cell + top-level netlist
├── python/         # Python: GDS/netlist extraction, spatial clustering, SAT encoding
├── testbench/      # ModelSim/Quartus testbenches, incl. the winning sequence testbench
```

## License

Add a license here if you'd like others to reuse the code (MIT is a common default for hobby projects like this).
