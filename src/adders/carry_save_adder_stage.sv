// file: carry_save_adder_stage.sv
// N-bit Carry Save Adder Stage
module carry_save_adder_stage #(parameter N = 4)(
    input logic [N-1:0] a, b, cin,
    output logic [N-1:0] sum, cout
    );
    genvar i;
    generate
        for(i = 0 ; i < N ; i++) begin: csa
            full_adder uut(
            .a(a[i]),
            .b(b[i]),
            .cin(cin[i]),
            .sum(sum[i]),
            .cout(cout[i]));
        end
    endgenerate
endmodule