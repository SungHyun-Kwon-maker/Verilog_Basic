// file: full_adder_2bit_tb.v
// Testbench for 2 bit full adder
`timescale 1 ns / 1 ps
module full_adder_2bit_tb;
    reg [1:0] a;
    reg [1:0] b;
    reg cin;
    wire [1:0] sum;
    wire cout;
    full_adder_2bit uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time : %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);
        a = 2'b01; b = 2'b01; cin = 1'b0; #10; // 1 + 1
        a = 2'b10; b = 2'b01; cin = 1'b0; #10; // 2 + 1
        a = 2'b11; b = 2'b01; cin = 1'b0; #10; // 3 + 1
        a = 2'b11; b = 2'b10; cin = 1'b0; #10; // 3 + 2
        $finish;
    end
endmodule