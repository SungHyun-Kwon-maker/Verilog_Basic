// file : not_gate_delay_tb.v
// Testbench for not_gate_delay

`timescale 1 ns / 1 ps

module not_gate_delay_tb;
    reg a;
    wire x;
    not_gate_delay not_gate_delay_uut(.A(a), .X(x));
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