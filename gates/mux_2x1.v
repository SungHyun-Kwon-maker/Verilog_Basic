// file : mux_2x1.v
// 2 to 1 multiplexer (MUX)
module mux_2x1 (
    input a,
    input b,
    input sel,
    output x
);
    // Select b if sel is 1, otherwise select a
    assign x = sel ? b : a;
endmodule