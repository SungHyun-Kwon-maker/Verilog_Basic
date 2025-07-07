// file : demux_1x2.v
// 1 to 2 demultiplexer (DEMUX)
module demux_1x2(
    input a,
    input sel,
    output x,
    output y
    );
    assign x = (sel == 0) ? a : 1'b0;
    assign y = (sel == 1) ? a : 1'b0;
endmodule
