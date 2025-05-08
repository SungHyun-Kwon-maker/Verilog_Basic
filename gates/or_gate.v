// file : or_gate.v
// OR gate : X = A | B
module or_gate(
    input A,
    input B,
    output X
    );
    assign X = A | B;
endmodule
