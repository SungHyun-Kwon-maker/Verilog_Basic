// file : nand_gate_delay.v
// NAND gate with delay
module nand_gate_delay(
    input A,
    input B,
    output X
    );
    nand #5 u_nand (X, A, B); // propagation delay
endmodule
