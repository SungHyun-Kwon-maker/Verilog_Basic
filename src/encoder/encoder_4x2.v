// file : encoder_4x2.v
// 4 to 2 Encoder
module encoder_4x2(
    input wire [3:0] d,
    output wire [1:0] a
    );
    assign a[1] = d[2] | d[3];
    assign a[0] = d[1] | d[3];
endmodule
