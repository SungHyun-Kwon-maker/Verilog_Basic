// file: multiple_adder_naive_4x32.sv
module multiple_adder_naive_4x32(
    input logic [31:0] x, y, z, w,
    output logic [34:0] final_sum // 32 + log2(4) = 34
    );
    logic [32:0] s1;
    logic [33:0] s2;
    carry_lookahead_adder #(.N(33)) adder1(
    .a({1'b0, x}),
    .b({1'b0, y}),
    .cin(1'b0),
    .sum(s1),
    .cout());
    carry_lookahead_adder #(.N(34)) adder2(
    .a({1'b0, s1}),
    .b({2'b00, z}),
    .cin(1'b0),
    .sum(s2),
    .cout());
    carry_lookahead_adder #(.N(35)) adder3(
    .a({1'b0, s2}),
    .b({3'b000, w}),
    .cin(1'b0),
    .sum(final_sum),
    .cout());
endmodule