// file: full_adder_2bit.v
// 2 bit full adder
module full_adder_2bit(
    input wire [1:0] a,
    input wire [1:0] b,
    input wire cin,
    output wire [1:0] sum,
    output wire cout
    );
    
    wire c1;
    
    full_adder FA1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder FA2(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(cout));
endmodule