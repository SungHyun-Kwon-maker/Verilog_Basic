// file :decoder_3x8.v
// 3 to 8 Decoder 
module decoder_3x8(
    input a2, a1, a0,
    output d7, d6, d5, d4, d3, d2, d1, d0
    );
    assign d7 = (a2 == 1 & a1 == 1 & a0 == 1) ? 1 : 0;
    assign d6 = (a2 == 1 & a1 == 1 & a0 == 0) ? 1 : 0;
    assign d5 = (a2 == 1 & a1 == 0 & a0 == 1) ? 1 : 0;
    assign d4 = (a2 == 1 & a1 == 0 & a0 == 0) ? 1 : 0;
    assign d3 = (a2 == 0 & a1 == 1 & a0 == 1) ? 1 : 0;
    assign d2 = (a2 == 0 & a1 == 1 & a0 == 0) ? 1 : 0;
    assign d1 = (a2 == 0 & a1 == 0 & a0 == 1) ? 1 : 0;
    assign d0 = (a2 == 0 & a1 == 0 & a0 == 0) ? 1 : 0;
endmodule
