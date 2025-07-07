// file : or_gate_delay_tb.v
// Testbench for or_gate_delay
`timescale 1 ns / 1 ps

module or_gate_delay_tb;
    reg a, b;
    wire x;
    or_gate_delay or_gate_delay_uut (.A(a), .B(b), .X(x));
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