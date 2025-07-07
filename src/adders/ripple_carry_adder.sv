// file: ripple_carry_adder.sv
// N bit Ripple Carry Adder (RCA)
module ripple_carry_adder #(parameter N = 32)(
    input logic [N-1:0] a, b,
    input logic cin,
    output logic [N-1:0] sum,
    output logic cout
    );
    logic [N:0] c;
    assign c[0] = cin;
    genvar i;
    generate
        for ( i = 0; i < N ; i = i + 1) begin: FA
            (* DONT_TOUCH = "TRUE" *)
            full_adder uut_fa(.a(a[i]), .b(b[i]), .cin(c[i]), .sum(sum[i]), .cout(c[i+1]));
        end
    endgenerate
    assign cout = c[N];
endmodule