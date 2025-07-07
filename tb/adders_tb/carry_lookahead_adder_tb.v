// file: carry_lookahead_adder_tb.v
// Testbench for N bit Carry-lookahead adder
`timescale 1 ns / 1 ps

module carry_lookahead_adder_tb;
    parameter N = 16;
    reg [N-1:0] a, b;
    reg cin;
    wire [N-1:0] sum;
    wire cout;
    
    carry_lookahead_adder #(.N(N)) uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time : %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);
        a = 10; b = 5; cin = 0; #10;
        a = 255; b = 1; cin = 0; #10;
        a = 32766; b = 1; cin = 0; #10;
        a = 32767; b = 1; cin = 0; #10;
        a = 65535; b = 65535; cin = 0; #10;
        $finish;
    end
endmodule