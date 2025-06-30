// file : encoder_8x3.v
// 8 to 3 Encoder
module encoder_8x3(
    input wire [7:0] d,
    output wire [2:0] a
    );
    assign a[2] = d[4] | d[5] | d[6] | d[7];
    assign a[1] = d[2] | d[3] | d[6] | d[7];
    assign a[0] = d[1] | d[3] | d[5] | d[7];
endmodule