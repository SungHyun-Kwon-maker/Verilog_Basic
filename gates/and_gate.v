// file : and_gate.v
// X = A & B

module and_gate(
    input A,
    input B,
    output X
    );
    assign X = A & B;
endmodule