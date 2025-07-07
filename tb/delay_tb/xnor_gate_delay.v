// file : xnor_gate_delay.v
// XNOR gate with delay
module xnor_gate_delay(
    input A,
    input B,
    output X
    );
    xnor #5 (X, A, B); // propagation delay
endmodule
