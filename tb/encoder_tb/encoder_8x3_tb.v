// file : encoder_8x3_tb.v
// Testbench for 8 to 3 Encoder
`timescale 1 ns / 1 ps

module encoder_8x3_tb;
    reg [7:0] d;
    wire [2:0] a;
    encoder_8x3 encoder_8x3_uut(.d(d), .a(a));
    initial begin
        d = 8'b0000_0000;
        #10;
        d = 8'b0000_0001; // d0 = 1
        #10;
        d = 8'b0000_0010; // d1 = 1
        #10;
        d = 8'b0000_0100; // d2 = 1
        #10;
        d = 8'b0000_1000; // d3 = 1
        #10;
        d = 8'b0001_0000; // d4 = 1
        #10;
        d = 8'b0010_0000; // d5 = 1
        #10;
        d = 8'b0100_0000; // d6 = 1
        #10;
        d = 8'b1000_0000; // d7 = 1
        #10;
        $finish;
    end
    
    initial begin
        $monitor("Time = %0t ns, Input d = %b, Output a = %b (%d)", $time, d, a, a);
    end
endmodule