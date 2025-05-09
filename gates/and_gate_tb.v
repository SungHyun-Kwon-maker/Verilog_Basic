// file : and_gate_tb.v
// Testbench for and_gate

`timescale 1ns / 1ps

module and_gate_tb;
    reg a, b;
    wire x;
    and_gate and_gate_uut(.A(a), .B(b), .X(x));
    
    initial begin
        a = 1'b0; b = 1'b0;
        #10 $display("A: %b, B: %b, X: %b", a, b, x);
        a = 1'b1; b = 1'b0;
        #10 $display("A: %b, B: %b, X: %b", a, b, x);
        a = 1'b0; b = 1'b1;
        #10 $display("A: %b, B: %b, X: %b", a, b, x);
        a = 1'b1; b = 1'b1;
        #10 $display("A: %b, B: %b, X: %b", a, b, x);
        #10 $finish;
    end
endmodule