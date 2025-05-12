// file : not_gate_delay.v
// NOT gate with delay
module not_gate_delay(
    input A,
    output X
    );
    not #5 u_not (X, A);
endmodule
