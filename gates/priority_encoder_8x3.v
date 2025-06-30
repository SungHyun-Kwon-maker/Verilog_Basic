// file : priority_encoder_8x3.v
// 8 to 3 priority encoder
module priority_encoder_8x3(
    input wire [7:0] d,
    output wire [2:0] a,
    output wire valid
    );
    assign a = d[7] ? 3'b111 :
               d[6] ? 3'b110 :
               d[5] ? 3'b101 :
               d[4] ? 3'b100 :
               d[3] ? 3'b011 :
               d[2] ? 3'b010 :
               d[1] ? 3'b001 :
               d[0] ? 3'b000 :
                      3'bxxx;
    assign valid = | d;
endmodule