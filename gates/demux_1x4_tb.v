// file : demux_1x4_tb.v
// Testbench for 1 to 4 demultiplexer
`timescale 1 ns / 1 ps

module demux_1x4_tb;
    reg a;
    reg [1:0] sel;
    wire x, y, z, k;
    demux_1x4 demux_1x4_uut(.a(a), .sel(sel), .x(x), .y(y), .z(z), .k(k));
    initial begin
        // sel = 00
        sel = 2'b00;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        // sel = 01
        sel = 2'b01;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        // sel = 10
        sel = 2'b10;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        // sel = 11
        sel = 2'b11;
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b0;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        a = 1'b1;
        #10 $display ("a: %b, sel: %b, x: %b, y: %b, z: %b, k: %b", a, sel, x, y, z, k);
        #10 $finish;
    end
endmodule