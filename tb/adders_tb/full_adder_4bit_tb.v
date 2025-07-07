// file: full_adder_4bit_tb.v
// Testbench for 4 bit full adder
`timescale 1 ns / 1 ps
module full_adder_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    full_adder_4bit uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time : %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);
        a = 4'b0100; b = 4'b0001; cin = 1'b0; #10; // 4 + 1
        a = 4'b1000; b = 4'b0011; cin = 1'b0; #10; // 8 + 3
        a = 4'b0111; b = 4'b0101; cin = 1'b0; #10; // 7 + 5
        a = 4'b1101; b = 4'b0010; cin = 1'b0; #10; // 13 + 2
        a = 4'b1111; b = 4'b1110; cin = 1'b0; #10; // 15 + 14
        $finish;
    end
endmodule