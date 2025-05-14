// file : mux_2x1_tb.v
// Testbench for 2 to 1 multiplexer
`timescale 1 ns / 1 ps

module mux_2x1_tb;
    reg a, b, sel;
    wire x;
    mux_2x1 mux_2x1_uut(.a(a), .b(b), .sel(sel), .x(x));
    
    initial begin
        // sel = 0
        sel = 1'b0;
        a = 1'b0; b = 1'b0;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b0; b = 1'b1;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b1; b = 1'b0;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b1; b = 1'b1;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        
        // sel = 1
        sel = 1'b1;
        a = 1'b0; b = 1'b0;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b0; b = 1'b1;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b1; b = 1'b0;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        a = 1'b1; b = 1'b1;
        #10 $display("a: %b, b: %b, sel: %b, x: %b", a, b, sel, x);
        #10 $finish;
    end
endmodule