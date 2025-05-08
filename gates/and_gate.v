// file : and_gate.v
// X = A & B

module and_gate(A,B,X);
    input A, B;
    output X;
    assign X = A & B;
endmodule