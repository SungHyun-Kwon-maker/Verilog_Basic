// file : decoder_3x8_tb.v
// Testbench for 3 to 8 Decoder
`timescale 1 ns / 1 ps

module decoder_3x8_tb;
    reg a2, a1, a0;
    wire d7, d6, d5, d4, d3, d2, d1, d0;
    decoder_3x8 decoder_3x8_uut(.a2(a2), .a1(a1), .a0(a0), .d7(d7), .d6(d6), .d5(d5), .d4(d4), .d3(d3), .d2(d2), .d1(d1), .d0(d0));
    initial begin
        a2 = 1'b0; a1 = 1'b0; a0 = 1'b0;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b0; a1 = 1'b0; a0 = 1'b1;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b0; a1 = 1'b1; a0 = 1'b0;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b0; a1 = 1'b1; a0 = 1'b1;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b1; a1 = 1'b0; a0 = 1'b0;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b1; a1 = 1'b0; a0 = 1'b1;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b1; a1 = 1'b1; a0 = 1'b0;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        a2 = 1'b1; a1 = 1'b1; a0 = 1'b1;
        #10 $display  ("a2 : %b, a1: %b, a0: %b, d7: %b, d6: %b, d5: %b, d4: %b, d3: %b, d2: %b, d1: %b, d0: %b", a2, a1, a0, d7, d6, d5, d4, d3, d2, d1, d0);
        #10 $finish;
    end
endmodule