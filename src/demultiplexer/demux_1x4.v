// file : demux_1x4.v
// 1 to 4 demultiplexer (DEMUX)
module demux_1x4(
    input a,
    input [1:0] sel,
    output x, y, z, k
    );
    assign x = (sel == 2'b00) ? a : 1'b0;
    assign y = (sel == 2'b01) ? a : 1'b0;
    assign z = (sel == 2'b10) ? a : 1'b0;
    assign k = (sel == 2'b11) ? a : 1'b0;
endmodule
