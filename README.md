# Verilog_Basic: Digital Logic Modules & Simulation with Vivado

This repository serves as a foundational learning playground for digital logic design, moving beyond basic gates to explore advanced arithmetic architectures. It emphasizes hands-on implementation, rigorous testbench-driven verification, and quantitative performance analysis on FPGA targets using Vivado

## Goal
To master fundamental Verilog/SystemVerilog HDL for digital circuit implementation, from basic logic gates to complex arithmetic units.

## Environment
- **Language** : Verilog/SystemVerilog (Vivado 2024.2.2)
- **Board** : BASYS3 FPGA BOARD FOR VIVADO

## File Structure
```
Verilog_Basic/
├── src/                      # Verilog source files (Designs)
│   ├── basic_gates/
│   ├── adders/
│   ├── encoder/
│   ├── decoder/
│   ├── multiplexer/
│   ├── demultiplexer/
│   ├── delay/
├── tb/                       # Testbench files
│   ├── basic_gates_tb/
│   ├── adders_tb/
│   ├── encoder_tb/
│   ├── decoder_tb/
│   ├── multiplexer_tb/
│   ├── demultiplexer_tb/
│   ├── delay_tb/
├── sim/                      # Waveform simulation results (.png)
├── README.md
├── .gitignore
└── LICENSE
```

## Module Catalog

### Combinational Logic

| Module             | Description              | Source File                                                  | Testbench File                                                       | Waveform                                          |
|--------------------|--------------------------|--------------------------------------------------------------|----------------------------------------------------------------------|---------------------------------------------------|
| Basic Gates        | AND, OR, NOT, NAND, etc. | [basic_gates/](src/basic_gates/)                             | [basic_gates_tb/](tb/basic_gates_tb/)                                | [waveform](sim/waveform_basic_gates)              |
| Basic Gates(Delay) | AND, OR, NOT, NAND, etc. | [delay/](src/delay/)                                         | [delay_tb/](tb/delay_tb/)                                            | [waveform](sim/waveform_delay)                    |
| MUX 2x1            | 2-to-1 Multiplexer       | [mux_2x1.v](src/multiplexer/mux_2x1.v)                       | [mux_2x1_tb.v](tb/multiplexer_tb/mux_2x1_tb.v)                       | [waveform](sim/waveform_mux_2x1.png)              |
| MUX 4x1            | 4-to-1 Multiplexer       | [mux_4x1.v](src/multiplexer/mux_4x1.v)                       | [mux_4x1_tb.v](tb/multiplexer_tb/mux_4x1_tb.v)                       | [waveform](sim/waveform_mux_4x1.png)              |
| DEMUX 1x2          | 1-to-2 Demultiplexer     | [demux_1x2.v](src/demultiplexer/demux_1x2.v)                 | [demux_1x2_tb.v](tb/demultiplexer_tb/demux_1x2_tb.v)                 | [waveform](sim/waveform_demux_1x2.png)            |
| DEMUX 1x4          | 1-to-4 Demultiplexer     | [demux_1x4.v](src/demultiplexer/demux_1x4.v)                 | [demux_1x4_tb.v](tb/demultiplexer_tb/demux_1x4_tb.v)                 | [waveform](sim/waveform_demux_1x4.png)            |
| Decoder 2x4        | 2-to-4 Decoder           | [decoder_2x4.v](src/decoder/decoder_2x4.v)                   | [decoder_2x4_tb.v](tb/decoder_tb/decoder_2x4_tb.v)                   | [waveform](sim/waveform_decoder_2x4.png)          |
| Decoder 3x8        | 3-to-8 Decoder           | [decoder_3x8.v](src/decoder/decoder_3x8.v)                   | [decoder_3x8_tb.v](tb/decoder_tb/decoder_3x8_tb.v)                   | [waveform](sim/waveform_decoder_3x8.png)          |
| Encoder 4x2        | 4-to-2 Encoder           | [encoder_4x2.v](src/encoder/encoder_4x2.v)                   | [encoder_4x2_tb.v](tb/encoder_tb/encoder_4x2_tb.v)                   | [waveform](sim/waveform_encoder_4x2.png)          |
| Encoder 8x3        | 8-to-3 Encoder           | [encoder_8x3.v](src/encoder/encoder_8x3.v)                   | [encoder_8x3_tb.v](tb/encoder_tb/encoder_8x3_tb.v)                   | [waveform](sim/waveform_encoder_8x3.png)          |
| P. Encoder 4x2     | 4-to-2 Priority Encoder  | [priority_encoder_4x2.v](src/encoder/priority_encoder_4x2.v) | [priority_encoder_4x2_tb.v](tb/encoder_tb/priority_encoder_4x2_tb.v) | [waveform](sim/waveform_priority_encoder_4x2.png) |
| P. Encoder 8x3     | 8-to-3 Priority Encoder  | [priority_encoder_8x3.v](src/encoder/priority_encoder_8x3.v) | [priority_encoder_8x3_tb.v](tb/encoder_tb/priority_encoder_8x3_tb.v) | [waveform](sim/waveform_priority_encoder_8x3.png) |

### Arithmetic Circuits

| Module                   | Description                                | Source File                                                               | Testbench File                                                                    | Waveform                                                |
|--------------------------|--------------------------------------------|---------------------------------------------------------------------------|-----------------------------------------------------------------------------------|---------------------------------------------------------|
| Half Adder               | 1-bit Half Adder                           | [half_adder.v](src/adders/half_adder.v)                                   | [half_adder_tb.v](tb/adders_tb/half_adder_tb.v)                                   | [waveform](sim/waveform_half_adder.png)                 |
| Full Adder               | 1-bit Full Adder                           | [full_adder.v](src/adders/full_adder.v)                                   | [full_adder_tb.v](tb/adders_tb/full_adder_tb.v)                                   | [waveform](sim/waveform_full_adder.png)                 |
| Full Adder 2-bit         | 2-bit Full Adder                           | [full_adder.v](src/adders/full_adder_2bit.v)                              | [full_adder_tb.v](tb/adders_tb/full_adder_2bit_tb.v)                              | [waveform](sim/waveform_full_adder_2bit.png)            |
| Full Adder 4-bit         | 4-bit Full Adder                           | [full_adder.v](src/adders/full_adder_4bit.v)                              | [full_adder_tb.v](tb/adders_tb/full_adder_4bit_tb.v)                              | [waveform](sim/waveform_full_adder_4bit.png)            |
| Ripple Carry Adder       | N-bit Ripple Carry Adder                   | [ripple_carry_adder.v](src/adders/ripple_carry_adder.v)                   | [ripple_carry_adder_tb.v](tb/adders_tb/ripple_carry_adder_tb.v)                   | [waveform](sim/waveform_ripple_carry_adder.png)         |
| Carry Lookahead          | N-bit Carry Lookahead Adder                | [carry_lookahead_adder.v](src/adders/carry_lookahead_adder.v)             | [carry_lookahead_adder_tb.v](tb/adders_tb/carry_lookahead_adder_tb.v)             | [waveform](sim/waveform_carry_lookahead_adder.png)      |
| MUX 2x1                  | N-bit 2-to-1 Multiplexer(SystemVerilog)    | [mux_2x1.sv](src/multiplexer/mux_2x1.sv)                                  | [mux_2x1_tb.sv](tb/multiplexer_tb/mux_2x1_tb.sv)                                  | [waveform](sim/waveform_mux_2x1_sv.png)                 |
| Half Adder               | 1-bit Half Adder(SystemVerilog)            | [half_adder.sv](src/adders/half_adder.sv)                                 | [half_adder_tb.sv](tb/adders_tb/half_adder_tb.sv)                                 | [waveform](sim/waveform_half_adder_sv.png)              |
| Full Adder               | 1-bit Full Adder(SystemVerilog)            | [full_adder.sv](src/adders/full_adder.sv)                                 | [full_adder_tb.sv](tb/adders_tb/full_adder_tb.sv)                                 | [waveform](sim/waveform_full_adder_sv.png)              |
| Ripple Carry Adder       | N-bit Ripple Carry Adder(SystemVerilog)    | [ripple_carry_adder.sv](src/adders/ripple_carry_adder.sv)                 | [ripple_carry_adder_tb.sv](tb/adders_tb/ripple_carry_adder_tb.sv)                 | [waveform](sim/waveform_ripple_carry_adder_sv.png)      |
| Carry Lookahead          | N-bit Carry Lookahead Adder(SystemVerilog) | [carry_lookahead_adder.sv](src/adders/carry_lookahead_adder.sv)           | [carry_lookahead_adder_tb.sv](tb/adders_tb/carry_lookahead_adder_tb.sv)           | [waveform](sim/waveform_carry_lookahead_adder_sv.png)   |
| Carry Select Adder       | N-bit Carry Select Adder                   | [carry_select_adder.sv](src/adders/carry_select_adder.sv)                 | [carry_select_adder_tb.sv](tb/adders_tb/carry_select_adder_tb.sv)                 | [waveform](sim/waveform_carry_select_adder.png)         |
| Carry Save Adder(stage)  | N-bit Carry Save Adder(stage)              | [carry_save_adder_stage.sv](src/adders/carry_save_adder_stage.sv)         | [carry_save_adder_stage_tb.sv](tb/adders_tb/carry_save_adder_stage_tb.sv)         | [waveform](sim/waveform_carry_save_adder_stage.png)     |
| Multiple Adder(4x4)      | 4-bit Carry Save Adder(CSA)                | [multiple_operand_adder_4x4.sv](src/adders/multiple_operand_adder_4x4.sv) | [multiple_operand_adder_4x4_tb.sv](tb/adders_tb/multiple_operand_adder_4x4_tb.sv) | [waveform](sim/waveform_multiple_operand_adder_4x4.png) |
| Multiple Adder(CLA 4x32) | 32-bit Carry Lookahead Adder               | [multiple_adder_naive_4x32.sv](src/adders/multiple_adder_naive_4x32.sv)   | [multiple_adder_naive_4x32_tb.sv](tb/adders_tb/multiple_adder_naive_4x32_tb.sv)   | [waveform](sim/waveform_multiple_adder_naive_4x32.png)  |
| Multiple Adder(CSA 4x32) | 32-bit Carry Save Adder(CSA)               | [multiple_adder_csa_4x32.sv](src/adders/multiple_adder_csa_4x32.sv)       | [multiple_adder_csa_4x32_tb.sv](tb/adders_tb/multiple_adder_csa_4x32_tb.sv)       | [waveform](sim/waveform_multiple_adder_csa_4x32.png)    |

### Adder Architecture Comparison (FPGA)

#### 2-Operand Adder Comparison (N-bit)
| Adder Type                | Critical Path Delay | Logic LUTs |
|---------------------------|---------------------|------------|
| Ripple Carry Adder (RCA)  | 23.335 ns           | 32         |
| Carry Lookahead Adder     | 12.222 ns           | 56         |
| Carry Select Adder (CSLA) | 12.222 ns           | 56         |

> **Note:** Vivado optimizes carry chains using FPGA primitives like `CARRY4`.

#### Multi-Operand Adder Comparison (4-Operand, 32-bit)
| Adder Type                | Critical Path Delay | Logic LUTs |
|---------------------------|---------------------|------------|
| CLA(4x32)                 | 17.727 ns           | 178        |
| CSA(4x32)                 | 15.327 ns           | 100        |

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.



