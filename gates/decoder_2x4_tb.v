// file : decoder_2x4_tb.v
// Testbench for 2 to 4 Decoder
`timescale 1 ns / 1 ps

module decoder_2x4_tb;
    reg a1, a0;
    wire d3, d2, d1, d0;
    decoder_2x4 decoder_2x4_uut(.a1(a1), .a0(a0), .d3(d3), .d2(d2), .d1(d1), .d0(d0));
    initial begin
        a1 = 1'b0; a0 = 1'b0;
        #10 $display ("a1: %b, a0: %b, d3: %b, d2: %b, d1: %b, d0: %b", a1, a0, d3, d2, d1, d0);
        a1 = 1'b0; a0 = 1'b1;
        #10 $display ("a1: %b, a0: %b, d3: %b, d2: %b, d1: %b, d0: %b", a1, a0, d3, d2, d1, d0);
        a1 = 1'b1; a0 = 1'b0;
        #10 $display ("a1: %b, a0: %b, d3: %b, d2: %b, d1: %b, d0: %b", a1, a0, d3, d2, d1, d0);
        a1 = 1'b1; a0 = 1'b1;
        #10 $display ("a1: %b, a0: %b, d3: %b, d2: %b, d1: %b, d0: %b", a1, a0, d3, d2, d1, d0);
        #10 $finish;
    end
endmodule