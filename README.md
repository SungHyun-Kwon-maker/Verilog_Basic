# Verilog_Basic: Digital Logic Modules & Simulation with Vivado
Basic Verilog modules for digital logic practice (AND, OR, NOT, XOR, NAND, NOR, Half Adder, etc.) with testbenches and simulation results.

## Goal
To practice implementing and verifying basic digital logic gates using Verilog HDL.

## Environment
- **Language** : Verilog (Vivado 2024.2)
- **Board** : BASYS3 FPGA BOARD FOR VIVADO

## File Structure
```
Verilog_Basic/
├── gates/
│   ├── and_gate.v
│   ├── and_gate_tb.v
│   ├── carry_lookahead_adder.v
│   ├── carry_lookahead_adder_tb.v
│   ├── decoder_2x4.v
│   ├── decoder_2x4_tb.v
│   ├── decoder_3x8.v
│   ├── decoder_3x8_tb.v
│   ├── demux_1x2.v
│   ├── demux_1x2_tb.v
│   ├── demux_1x4.v
│   ├── demux_1x4_tb.v
│   ├── encoder_4x2.v
│   ├── encoder_4x2_tb.v
│   ├── encoder_8x3.v
│   ├── encoder_8x3_tb.v
│   ├── full_adder.v
│   ├── full_adder_tb.v
│   ├── full_adder_2bit.v
│   ├── full_adder_2bit_tb.v
│   ├── full_adder_4bit.v
│   ├── full_adder_4bit_tb.v
│   ├── half_adder.v
│   ├── half_adder_tb.v
│   ├── mux_2x1.v
│   ├── mux_2x1_tb.v
│   ├── mux_4x1.v
│   ├── mux_4x1_tb.v
│   ├── nand_gate.v
│   ├── nand_gate_tb.v
│   ├── nor_gate.v
│   ├── nor_gate_tb.v
│   ├── not_gate.v
│   ├── not_gate_tb.v
│   ├── or_gate.v
│   ├── or_gate_tb.v
│   ├── priority_encoder_4x2.v
│   ├── priority_encoder_4x2_tb.v
│   ├── priority_encoder_8x3.v
│   ├── priority_encoder_8x3_tb.v
│   ├── ripple_carry_adder.v
│   ├── ripple_carry_adder_tb.v
│   ├── xnor_gate.v
│   ├── xnor_gate_tb.v
│   ├── xor_gate.v
│   ├── xor_gate_tb.v
│   ├── delay/
│   │ ├── and_gate_delay.v
│   │ ├── and_gate_delay_tb.v
│   │ ├── nand_gate_delay.v
│   │ ├── nand_gate_delay_tb.v
│   │ ├── nor_gate_delay.v
│   │ ├── nor_gate_delay_tb.v
│   │ ├── not_gate_delay.v
│   │ ├── not_gate_delay_tb.v
│   │ ├── or_gate_delay.v
│   │ ├── or_gate_delay_tb.v
│   │ ├── xnor_gate_delay.v
│   │ ├── xnor_gate_delay_tb.v
│   │ ├── xor_gate_delay.v
│   │ └── xor_gate_delay_tb.v
│   └── sim/
│       ├── waveform_and.png
│       ├── waveform_and_delay.png
│       ├── waveform_carry_lookahead_adder.png
│       ├── waveform_decoder_2x4.png
│       ├── waveform_decoder_3x8.png
│       ├── waveform_demux_1x2.png
│       ├── waveform_demux_1x4.png
│       ├── waveform_encoder_4x2.png
│       ├── waveform_encoder_8x3.png
│       ├── waveform_full_adder.png
│       ├── waveform_full_adder_2bit.png
│       ├── waveform_full_adder_4bit.png
│       ├── waveform_half_adder.png
│       ├── waveform_mux_2x1.png
│       ├── waveform_mux_4x1.png
│       ├── waveform_nand.png
│       ├── waveform_nand_delay.png
│       ├── waveform_nor.png
│       ├── waveform_nor_delay.png
│       ├── waveform_not.png
│       ├── waveform_not_delay.png
│       ├── waveform_or.png
│       ├── waveform_or_delay.png
│       ├── waveform_priority_encoder_4x2.png
│       ├── waveform_priority_encoder_8x3.png
│       ├── waveform_ripple_carry_adder.png
│       ├── waveform_xnor.png
│       ├── waveform_xnor_delay.png
│       ├── waveform_xor.png
│       └── waveform_xor_delay.png
├── README.md
├── .gitignore
└── LICENSE
```

## Included Modules 

This repository contains the following modules in the 'gates/' folder:

### Logic Gates

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

### Multiplexers

- `mux_2x1.v` : 2-to-1 multiplexer (MUX)  
  `mux_2x1_tb.v` : Testbench for 2-to-1 multiplexer  
  `sim/waveform_mux_2x1.png` : Simulation waveform

- `mux_4x1.v` : 4-to-1 multiplexer (MUX)  
  `mux_4x1_tb.v` : Testbench for 4-to-1 multiplexer  
  `sim/waveform_mux_4x1.png` : Simulation waveform
  
### Demultiplexers

- `demux_1x2.v` : 1-to-2 demultiplexer (DEMUX)  
  `demux_1x2_tb.v` : Testbench for 1-to-2 demultiplexer  
  `sim/waveform_demux_1x2.png` : Simulation waveform

- `demux_1x4.v` : 1-to-4 demultiplexer (DEMUX)  
  `demux_1x4_tb.v` : Testbench for 1-to-4 demultiplexer  
  `sim/waveform_demux_1x4.png` : Simulation waveform
  
### Decoders

- `decoder_2x4.v` : 2-to-4 decoder (DECODER)  
  `decoder_2x4_tb.v` : Testbench for 2-to-4 decoder  
  `sim/waveform_decoder_2x4.png` : Simulation waveform  
  
- `decoder_3x8.v` : 3-to-8 decoder (DECODER)  
  `decoder_3x8_tb.v` : Testbench for 3-to-8 decoder  
  `sim/waveform_decoder_3x8.png` : Simulation waveform  

### Encoders

- `encoder_4x2.v` : 4-to-2 encoder (ENCODER)  
  `encoder_4x2_tb.v` : Testbench for 4-to-2 encoder  
  `sim/waveform_encoder_4x2.png` : Simulation waveform  
  
- `encoder_8x3.v` : 8-to-3 encoder (ENCODER)  
  `encoder_8x3_tb.v` : Testbench for 8-to-3 encoder  
  `sim/waveform_encoder_8x3.png` : Simulation waveform  
  
- `priority_encoder_4x2.v` : 4-to-2 priority encoder (Priority Encoder)  
  `priority_encoder_4x2_tb.v` : Testbench for 4-to-2 priority encoder  
  `sim/waveform_priority_encoder_4x2.png` : Simulation waveform  

- `priority_encoder_8x3.v` : 8-to-3 priority encoder (Priority Encoder)  
  `priority_encoder_8x3_tb.v` : Testbench for 8-to-3 priority encoder  
  `sim/waveform_priority_encoder_8x3.png` : Simulation waveform  

### Adder

- `half_adder.v` : 1 bit half adder  
  `half_adder_tb.v` : Testbench 1 bit half adder  
  `sim/waveform_half_adder.png` : Simulation waveform

- `full_adder.v` : 1 bit full adder  
  `full_adder_tb.v` : Testbench for 1 bit full adder  
  `sim/waveform_full_adder.png` : Simulation waveform
  
- `full_adder_2bit.v` : 2 bit full adder  
  `full_adder_2bit_tb.v` : Testbench for 2 bit full adder  
  `sim/waveform_full_adder_2bit.png` : Simulation waveform
  
- `full_adder_4bit.v` : 4 bit full adder  
  `full_adder_4bit_tb.v` : Testbench for 4 bit full adder  
  `sim/waveform_full_adder_4bit.png` : Simulation waveform
  
- `ripple_carry_adder.v` : N bit Ripple Carry Adder  
  `ripple_carry_adder_tb.v` : Testbench for N bit Ripple Carry Adder  
  `sim/waveform_ripple_carry_adder.png` : Simulation waveform
  
- `carry_lookahead_adder.v` : N bit Carry-lookahead adder  
  `carry_lookahead_adder_tb.v` : Testbench for N bit Carry-lookahead adder  
  `sim/waveform_carry_lookahead_adder.png` : Simulation waveform
  > 🔍 **Note**:  
  > The `carry_lookahead_adder.v` is written as a **behavioral model** for clarity and parameterization.  
  > Vivado synthesizer will optimize carry chains using FPGA-specific primitives like `CARRY4`.

### Delay-Based Gates

- `delay/and_gate_delay.v` : 1-bit AND gate with 5ns delay  
  `delay/and_gate_delay_tb.v` : Testbench for 1-bit AND gate with delay  
  `sim/waveform_and_delay.png` : Simulation waveform showing 5ns delay

- `delay/or_gate_delay.v` : 1-bit OR gate with 5ns delay  
  `delay/or_gate_delay_tb.v` : Testbench for 1-bit OR gate with delay  
  `sim/waveform_or_delay.png` : Simulation waveform showing 5ns delay

- `delay/not_gate_delay.v` : 1-bit NOT gate with 5ns delay  
  `delay/not_gate_delay_tb.v` : Testbench for 1-bit NOT gate with delay  
  `sim/waveform_not_delay.png` : Simulation waveform showing 5ns delay

- `delay/nand_gate_delay.v` : 1-bit NAND gate with 5ns delay  
  `delay/nand_gate_delay_tb.v` : Testbench for 1-bit NAND gate with delay  
  `sim/waveform_nand_delay.png` : Simulation waveform showing 5ns delay

- `delay/nor_gate_delay.v` : 1-bit NOR gate with 5ns delay  
  `delay/nor_gate_delay_tb.v` : Testbench for 1-bit NOR gate with delay  
  `sim/waveform_nor_delay.png` : Simulation waveform showing 5ns delay

- `delay/xor_gate_delay.v` : 1-bit XOR gate with 5ns delay  
  `delay/xor_gate_delay_tb.v` : Testbench for 1-bit XOR gate with delay  
  `sim/waveform_xor_delay.png` : Simulation waveform showing 5ns delay

- `delay/xnor_gate_delay.v` : 1-bit XNOR gate with 5ns delay  
  `delay/xnor_gate_delay_tb.v` : Testbench for 1-bit XNOR gate with delay  
  `sim/waveform_xnor_delay.png` : Simulation waveform showing 5ns delay

## License
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
