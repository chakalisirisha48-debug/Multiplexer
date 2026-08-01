# 2:1 Multiplexer using Verilog

## Overview

A Multiplexer (MUX) is a combinational logic circuit that selects one of multiple input signals and forwards the selected input to a single output line.

This project implements a **2:1 Multiplexer** using Verilog HDL.

## Inputs

- A – Input 0
- B – Input 1
- Sel – Selection line

## Output

- Y – Selected output

## Truth Table

| Sel | A | B | Y |
|-----|---|---|---|
| 0 | 0 | X | 0 |
| 0 | 1 | X | 1 |
| 1 | X | 0 | 0 |
| 1 | X | 1 | 1 |

**X = Don't Care**

## Logic Equation

```
Y = (A & ~Sel) | (B & Sel)
```

or equivalently

```verilog
assign Y = Sel ? B : A;
```

## Files

- `multiplexer.v` – Verilog implementation
- `multiplexer_tb.v` – Testbench
- `simulation.png` – Waveform screenshot
- `README.md` – Project documentation

## Expected Simulation Output

```text
A B Sel | Y
0 0  0  | 0
0 1  0  | 0
1 0  0  | 1
1 1  0  | 1
0 0  1  | 0
0 1  1  | 1
1 0  1  | 0
1 1  1  | 1
```

## Tools Used

- Verilog HDL
- ModelSim / Vivado / EDA Playground

## Applications

- Data Routing
- Bus Switching
- Digital Communication Systems
- ALUs and Processors
- Memory Selection

## Author

Your Name