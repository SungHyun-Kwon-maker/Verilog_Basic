# Verilog_Basic
Basic Verilog modules for digital logic practice (AND, OR, NOT, XOR, NAND, NOR, Half Adder, etc.) with testbenches and simulation results.

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
│   ├── nand_gate.v
│   ├── nand_gate_tb.v
│   ├── nor_gate.v
│   ├── nor_gate_tb.v
│   ├── not_gate.v
│   ├── not_gate_tb.v
│   ├── or_gate.v
│   ├── or_gate_tb.v
│   ├── xnor_gate.v
│   ├── xnor_gate_tb.v
│   ├── xor_gate.v
│   ├── xor_gate_tb.v
│   └── sim/
│       ├── waveform_and.png
│       ├── waveform_nand.png
│       ├── waveform_nor.png
│       ├── waveform_not.png
│       ├── waveform_or.png
│       ├── waveform_xnor.png
│       └── waveform_xor.png
├── README.md
├── .gitignore
└── LICENSE
```

## Included Modules 

This repository contains the following modules in the 'gates/' folder:

- `and_gate.v` : 1-bit AND gate  
  `and_gate_tb.v` : Testbench for AND gate  
  `sim/waveform_and.png` : Simulation waveform

- `or_gate.v` : 1-bit OR gate  
  `or_gate_tb.v` : Testbench for OR gate  
  `sim/waveform_or.png` : Simulation waveform

- `not_gate.v` : 1-bit NOT gate  
  `not_gate_tb.v` : Testbench for NOT gate  
  `sim/waveform_not.png` : Simulation waveform

- `nand_gate.v` : 1-bit NAND gate  
  `nand_gate_tb.v` : Testbench for NAND gate  
  `sim/waveform_nand.png` : Simulation waveform

- `nor_gate.v` : 1-bit NOR gate  
  `nor_gate_tb.v` : Testbench for NOR gate  
  `sim/waveform_nor.png` : Simulation waveform

- `xor_gate.v` : 1-bit XOR gate  
  `xor_gate_tb.v` : Testbench for XOR gate  
  `sim/waveform_xor.png` : Simulation waveform

- `xnor_gate.v` : 1-bit XNOR gate  
  `xnor_gate_tb.v` : Testbench for XNOR gate  
  `sim/waveform_xnor.png` : Simulation waveform

## License
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
