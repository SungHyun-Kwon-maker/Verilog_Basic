// file : mux_4x1_tb.v
// Testbench for 4 to 1 multiplexer
`timescale 1 ns / 1 ps

module mux_4x1_tb;
    reg a, b, c, d;
    reg [1:0] sel;
    wire x;
    mux_4x1 mux_4x1_uut(.a(a), .b(b), .c(c), .d(d), .sel(sel), .x(x));
    
    initial begin
    // sel = 00
    sel = 2'b00;
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    
    // sel = 01
    sel = 2'b01;
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    
    // sel = 10
    sel = 2'b10;
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    
    // sel = 11
    sel = 2'b11;
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
    #10 $display("a: %b, b: %b, c: %b, d: %b, sel: %b, x: %b", a, b, c, d, sel, x);
    
    #10 $finish;    
    end
endmodule
