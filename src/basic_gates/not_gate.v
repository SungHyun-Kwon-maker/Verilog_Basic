// file : not_gate.v
// NOT gate(Inverter) : X = -A

module not_gate(
    input A,
    output X
    );
    assign X = ~A;
endmodule
