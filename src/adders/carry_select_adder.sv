// file: carry_select_adder.sv
// N bit Carry Select Adder (CSA)
module carry_select_adder #(
    parameter N = 32,
    parameter SIZE = 4)
    (
    input logic [N-1:0] a, b,
    input logic cin,
    output logic [N-1:0] sum,
    output logic cout
    );
    localparam BLOCK = N / SIZE;
    logic [BLOCK:0] carry_in;
    logic [BLOCK-1:0][SIZE-1:0] sum0;
    logic [BLOCK-1:0][SIZE-1:0] sum1;
    logic [BLOCK-1:0] carry_out0;
    logic [BLOCK-1:0] carry_out1;
    assign carry_in[0] = cin;
    genvar i;
    generate
        for(i = 0 ; i < BLOCK ; i++) begin: csa
            localparam start_bit = SIZE * i;
            localparam end_bit = start_bit + SIZE -1;
            ripple_carry_adder #(.N(SIZE)) rca_0(
            .a(a[end_bit:start_bit]),
            .b(b[end_bit:start_bit]),
            .cin(1'b0),
            .sum(sum0[i]),
            .cout(carry_out0[i])
            );
            ripple_carry_adder #(.N(SIZE)) rca_1(
            .a(a[end_bit:start_bit]),
            .b(b[end_bit:start_bit]),
            .cin(1'b1),
            .sum(sum1[i]),
            .cout(carry_out1[i])
            );
            mux_2x1 #(.N(SIZE)) mux_sum(
            .d0(sum0[i]),
            .d1(sum1[i]),
            .sel(carry_in[i]),
            .y(sum[end_bit:start_bit])
            );
            mux_2x1 #(.N(SIZE)) mux_cout(
            .d0(carry_out0[i]),
            .d1(carry_out1[i]),
            .sel(carry_in[i]),
            .y(carry_in[i+1])
            );
        end
    endgenerate
    assign cout = carry_in[BLOCK];
endmodule