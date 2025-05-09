// file : nand_gate.v
// NAND gate : X = ~(A & B)

module nand_gate(
    input A,
    input B,
    output X
    );
    assign X = ~(A & B);
endmodule
