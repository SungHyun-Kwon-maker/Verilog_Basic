// file : or_gate_delay.v
// OR gate with delay
module or_gate_delay(
    input A,
    input B,
    output X
    );
    or #5 u_or (X, A, B); // propagation delay
endmodule
