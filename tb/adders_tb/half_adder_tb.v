// file: half_adder_tb.v
// Testbench for 1 bit half adder
`timescale 1 ns / 1 ps

module half_adder_tb;
    reg a, b;
    wire sum, carry;
    half_adder half_adder_uut(.a(a), .b(b), .sum(sum), .carry(carry));
    initial begin
        $monitor("Time : %0t, input a : %b, input b : %b, output sum : %b, output carry : %b", $time, a, b, sum, carry);
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
endmodule