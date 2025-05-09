# Verilog_Basic
Basic Verilog modules for digital logic practice (AND, OR, NOT, XOR, NAND, NOR, Half Adder etc.) with testbenches and simulation results.

## Goal
To practice implementing and testing fundamental digital logic gates using Verilog HDL.

## Environment
- **Language** : Verilog (Vivado 2024.2)
- **Board** : BASYS3 FPGA BOARD FOR VIVADO

## File Structure
```
Verilog_Basic/
├── gates/
│   ├── and_gate.v
│   ├── and_gate_tb.v
│   ├── not_gate.v
│   ├── not_gate_tb.v
│   ├── or_gate.v
│   ├── or_gate_tb.v
│   └── sim/
│       ├── waveform_and.png
│       ├── waveform_or.png
│       └── waveform_not.png
├── README.md
├── .gitignore
└── LICENSE
```

## Included Modules 

This repository contains the following modules in the 'gates/' folder:

- `and_gate.v` : 1-bit AND gate
- `and_gate_tb.v` : Testbench for AND gate
- `gates/sim/waveform_and.png`: Simulation waveform
- `or_gate.v` : 1-bit OR gate
- `or_gate_tb.v` : Testbench for OR gate
- `gates/sim/waveform_or.png` : Simulation waveform
- `not_gate.v` : 1-bit NOT gate
- `not_gate_tb.v` : Testbench for NOT gate
- `gates/sim/waveform_not.png` : Simulation waveform

## License
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
