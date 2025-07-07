// file : xor_gate.v
// XOR gate : X = A ^ B;

module xor_gate(
    input A,
    input B,
    output X
    );
    assign X = A ^ B;
endmodule
