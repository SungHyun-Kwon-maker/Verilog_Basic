// file : xnor_gate.v
// XNOR gate : X = ~(A ^ B)

module xnor_gate(
    input A,
    input B,
    output X
    );
    assign X = ~(A ^ B);
endmodule