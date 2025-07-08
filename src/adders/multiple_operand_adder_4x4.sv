// file : multiple_operand_adder_4x4.sv
module multiple_operand_adder_4x4(
    input logic [3:0] x, y, z, w,
    output logic [6:0] sum
    );
    logic [3:0] s1, c1;
    logic [4:0] s2, c2;
    
    carry_save_adder_stage #(.N(4)) csa_stage1(
    .a(x),
    .b(y),
    .cin(z),
    .sum(s1),
    .cout(c1));
    carry_save_adder_stage #(.N(5)) csa_stage2(
    .a({1'b0 ,s1}),
    .b({1'b0 ,w}),
    .cin({c1 ,1'b0}),
    .sum(s2),
    .cout(c2));
    carry_lookahead_adder #(.N(7)) final_adder(
    .a({2'b00, s2}),
    .b({1'b0, c2, 1'b0}),
    .cin(1'b0),
    .sum(sum),
    .cout());
endmodule