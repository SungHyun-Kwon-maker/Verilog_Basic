// file : half_adder.v
// 1 bit half adder
module half_adder(
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
    );
    assign sum = a ^ b;
    assign carry = a & b;
endmodule