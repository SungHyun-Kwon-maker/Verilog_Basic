// file : not_gate_tb.v
// Testbench for NOT gate

`timescale 1 ns / 1 ps

module not_gate_tb;
    reg a;
    wire x;
    not_gate not_gate_uut(.A(a), .X(x));
    initial begin
        a = 1'b0;
        #10 $display("A: %b, X: %b", a, x);
        a = 1'b1;
        #10 $display("A: %b, X: %b", a, x);
        a = 1'b0;
        #10 $display("A: %b, X: %b", a, x);
        #10 $finish;
    end
endmodule