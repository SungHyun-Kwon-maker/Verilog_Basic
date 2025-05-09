// file : not_gate_tb.v
// Testbench for NOT gate

`timescale 1 ns / 1 ps

module not_gate_tb;
    reg ra;
    wire rx;
    not_gate not_gate_uut(.A(ra),.X(rx));
    initial begin
        ra = 1'b0;
        #10 $display("A: %b, X: %b",ra,rx);
        ra = 1'b1;
        #10 $display("A: %b, X: %b",ra,rx);
        ra = 1'b0;
        #10 $display("A: %b, X: %b",ra,rx);
        #10 $finish;
    end
endmodule