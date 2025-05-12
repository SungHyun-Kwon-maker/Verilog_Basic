// file : and_gate_delay.v
// AND gate with delay
module and_gate_delay(
    input A,
    input B,
    output X
    );
    and #5 u_and (X, A, B); // propagation delay
endmodule
