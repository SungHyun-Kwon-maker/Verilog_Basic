// file : mux_4x1.v
// 4 to 1 multiplexer (MUX)
module mux_4x1(
    input a, b, c, d,
    input [1:0] sel,
    output x
    );
    assign x = (sel == 2'b00) ? a :
               (sel == 2'b01) ? b :
               (sel == 2'b10) ? c :
                                d ;
endmodule
