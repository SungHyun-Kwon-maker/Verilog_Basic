// file: half_adder_tb.sv
// Testbench for 1 bit Half Adder
`timescale 1 ns / 1 ps

module half_adder_tb;
    logic a, b;
    logic sum, carry;
    half_adder uut(.a(a), .b(b), .sum(sum), .carry(carry));
    initial begin
        $monitor("Time : %0t, a = %b, b = %b, sum = %b, carry = %b", $time , a, b, sum, carry);
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        #10;
        $finish;
    end
endmodule