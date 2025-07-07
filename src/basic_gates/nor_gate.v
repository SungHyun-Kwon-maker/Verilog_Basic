// file : nor_gate.v
// NOR gate : X = ~(A | B)

module nor_gate(
    input A,
    input B,
    output X
    );
    assign X = ~(A | B);
endmodule
