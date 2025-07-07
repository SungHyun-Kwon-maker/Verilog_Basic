// file : xor_gate_delay.v
// XOR gate with delay
module xor_gate_delay(
    input A,
    input B,
    output X
    );
    xor #5 u_xor (X, A, B); // propagation delay
endmodule
