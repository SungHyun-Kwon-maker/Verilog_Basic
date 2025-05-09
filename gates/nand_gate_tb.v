// file : nand_gate_tb.v
// Testbench for NAND gate
`timescale 1 ns / 1 ps

module nand_gate_tb;
    reg ra, rb;
    wire rx;
    nand_gate nand_gate_uut(.A(ra), .B(rb), .X(rx));
    initial begin
        ra = 1'b0; rb = 1'b0;
        #10 $display("A: %b, B: %b, X: %b", ra, rb, rx);
        ra = 1'b1; rb = 1'b0;
        #10 $display("A: %b, B: %b, X: %b", ra, rb, rx);
        ra = 1'b0; rb = 1'b1;
        #10 $display("A: %b, B: %b, X: %b", ra, rb, rx);
        ra = 1'b1; rb = 1'b1;
        #10 $display("A: %b, B: %b, X: %b", ra, rb, rx);
        #10 $finish;
    end
endmodule