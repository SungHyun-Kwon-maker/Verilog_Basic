// file: multiple_adder_csa_4x32.sv
module multiple_adder_csa_4x32(
    input logic [31:0] x, y, z, w,
    output logic [34:0] final_sum // 32 + log2(4) = 34
    );
    logic [31:0] s1, c1;
    logic [32:0] s2, c2;
    carry_save_adder_stage #(.N(32)) csa_stage1(
    .a(x),
    .b(y),
    .cin(z),
    .sum(s1),
    .cout(c1));
    carry_save_adder_stage #(.N(33)) csa_stage2(
    .a({1'b0, s1}),
    .b({1'b0, w}),
    .cin({c1, 1'b0}),
    .sum(s2),
    .cout(c2));
    carry_lookahead_adder #(.N(35)) sum(
    .a({2'b00, s2}),
    .b({1'b0, c2, 1'b0}),
    .cin(1'b0),
    .sum(final_sum),
    .cout());
endmodule