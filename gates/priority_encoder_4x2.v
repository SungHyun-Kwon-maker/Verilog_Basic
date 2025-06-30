// file : priority_encoder_4x2.v
// 4 to 2 Priority Encoder
module priority_encoder_4x2(
    input wire [3:0] d,
    output wire [1:0] a,
    output wire valid
    );
    assign a = d[3] ? 2'b11 :
               d[2] ? 2'b10 :
               d[1] ? 2'b01 :
               d[0] ? 2'b00 :
                      2'bxx;
    assign valid = | d;
endmodule