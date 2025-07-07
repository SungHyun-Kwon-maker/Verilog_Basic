// file : priority_encoder_4x2_tb.v
// Testbench for 4 to 2 Priority Encoder
`timescale 1 ns / 1 ps

module priority_encoder_4x2_tb;
    reg [3:0] d;
    wire [1:0] a;
    wire valid;
    priority_encoder_4x2 priority_encoder_4x2_uut(.d(d), .a(a), .valid(valid));
    initial begin
        $display("--- Priority Encoder 4x2 Test Start ---");
        $monitor("Time : %0t, Input d : %b, Output a : %b (%d), Valid : %b",$time, d, a, a, valid);
        d = 4'b0000; #10;
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0011; #10;
        d = 4'b0100; #10;
        d = 4'b0101; #10;
        d = 4'b0110; #10;
        d = 4'b0111; #10;
        d = 4'b1000; #10;
        d = 4'b1001; #10;
        d = 4'b1010; #10;
        d = 4'b1011; #10;
        d = 4'b1100; #10;
        d = 4'b1101; #10;
        d = 4'b1110; #10;
        d = 4'b1111; #10;
        $finish;
    end
endmodule