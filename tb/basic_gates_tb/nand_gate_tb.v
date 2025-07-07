// file : nand_gate_tb.v
// Testbench for NAND gate
`timescale 1 ns / 1 ps

module nand_gate_tb;
    reg a, b;
    wire x;
    nand_gate nand_gate_uut(.A(a), .B(b), .X(x));
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