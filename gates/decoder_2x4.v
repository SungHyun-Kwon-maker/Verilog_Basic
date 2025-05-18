// file : decoder_2x4.v
// 2 to 4 Decoder
module decoder_2x4(
    input a1, a0,
    output d3, d2, d1, d0
    );
    assign d3 = (a1 == 1 & a0 == 1) ? 1 : 0;
    assign d2 = (a1 == 1 & a0 == 0) ? 1 : 0;
    assign d1 = (a1 == 0 & a0 == 1) ? 1 : 0;
    assign d0 = (a1 == 0 & a0 == 0) ? 1 : 0;
endmodule
