// file: multiple_operand_adder_4x4_tb.sv
// Testbench for 4x4 bit Carry Save Adder(CSA)
`timescale 1 ns / 1 ps

module multiple_operand_adder_4x4_tb;
    logic [3:0] x, y, z, w;
    logic [6:0] sum;
    
    multiple_operand_adder_4x4 uut(
    .x(x),
    .y(y),
    .z(z),
    .w(w),
    .sum(sum));
    initial begin
        $monitor("Time = %0t, x = %h, y = %h, z = %h, w = %h, sum = %h",
                $time, x, y, z, w, sum);
        x = 4'b0001; y = 4'b0010; z = 4'b0011; w = 4'b0100; #10;
        x = 4'b1111; y = 4'b1111; z = 4'b1111; w = 4'b1111; #10;
        x = 4'b0000; y = 4'b0000; z = 4'b0000; w = 4'b0000; #10;
        x = 4'b1010; y = 4'b0101; z = 4'b0101; w = 4'b1010; #10;
        x = 4'b1000; y = 4'b0100; z = 4'b0010; w = 4'b0001; #10;
        #10
        $finish;
    end
endmodule