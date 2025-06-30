// file : encoder_4x2_tb.v
// Testbench for 4 to 2 Encoder
`timescale 1 ns / 1 ps

module encoder_4x2_tb;
    reg [3:0] d;
    wire [1:0] a;
    encoder_4x2 encoder_4x2_uut(.d(d), .a(a));
    initial begin
        d = 4'b0000;
        #10 $display ("Input d: %b, Output a: %b", d, a);
        d = 4'b0001; // d0 = 1
        #10 $display ("Input d: %b, Output a: %b", d, a);
        d = 4'b0010; // d1 = 1
        #10 $display ("Input d: %b, Output a: %b", d, a);
        d = 4'b0100; // d2 = 1
        #10 $display ("Input d: %b, Output a: %b", d, a);
        d = 4'b1000; // d3 = 1
        #10 $display ("Input d: %b, Output a: %b", d, a);
        #10 $finish;
    end
endmodule