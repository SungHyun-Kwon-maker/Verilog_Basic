// file: mux_2x1_tb.sv
// Testbench for N-bit 2-to-1 Multiplexer
`timescale 1 ns / 1 ps

module mux_2x1_tb;
    parameter N = 4;
    logic [N-1:0] d0, d1;
    logic sel;
    logic [N-1:0] y;
    mux_2x1 #(.N(N)) uut(.d0(d0), .d1(d1), .sel(sel), .y(y));
    initial begin
        $monitor("Time : %0t, d0 = %b, d1 = %b, sel = %b, y = %b", $time, d0, d1, sel, y);
        d0 = 4'b0001; d1 = 4'b1010;
        sel = 0; #10;
        sel = 1; #10;

        d0 = 4'b1111; d1 = 4'b0000;
        sel = 0; #10;
        sel = 1; #10;
        #10;
        $finish;
    end
endmodule