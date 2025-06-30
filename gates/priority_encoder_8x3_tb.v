// file : priority_encoder_8x3_tb.v
// Testbench for 8 to 3 priority encoder
`timescale 1 ns / 1 ps

module priority_encoder_8x3_tb;
    reg [7:0] d;
    wire [2:0] a;
    wire valid;
    priority_encoder_8x3 priority_encoder_8x3_uut(.d(d), .a(a), .valid(valid));
    initial begin
        $monitor("Time : %0t, Input d : %b, Output a : %b (%d), Valid : %b", $time, d, a, a, valid);
        d = 8'b0000_0000; #10;
        d = 8'b0000_0001; #10;
        d = 8'b0000_0010; #10;
        d = 8'b0000_0100; #10;
        d = 8'b0000_1000; #10;
        d = 8'b0001_0000; #10;
        d = 8'b0010_0000; #10;
        d = 8'b0100_0000; #10;
        d = 8'b1000_0000; #10;
        $finish;
    end
endmodule