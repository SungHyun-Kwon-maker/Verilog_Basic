// file : nor_gate_delay.v
// NOR gate with delay
module nor_gate_delay(
    input A,
    input B,
    output X
    );
    nor #5 u_nor (X, A, B);
endmodule