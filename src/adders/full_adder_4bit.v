// file: full_adder_4bit.v
// 4 bit full adder
module full_adder_4bit(
    input wire [3:0] a,
    input wire [3:0] b,
    input cin,
    output wire [3:0] sum,
    output cout
    );
    wire c1;
    wire c2;
    wire c3;
    full_adder FA1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder FA2(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
    full_adder FA3(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3));
    full_adder FA4(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout));
endmodule