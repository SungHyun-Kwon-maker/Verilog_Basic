// file : demux_1x2_tb.v
// Testbench for 1 to 2 demultiplexer
`timescale 1 ns / 1 ps

module demux_1x2_tb;
    reg a, sel;
    wire x, y;
    demux_1x2 demux_1x2_uut(.a(a), .sel(sel), .x(x), .y(y));
    
    initial begin
        // sel = 0
        sel = 1'b0;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        // sel = 1
        sel = 1'b1;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b", a, sel, x, y);
        #10 $finish;
    end
endmodule