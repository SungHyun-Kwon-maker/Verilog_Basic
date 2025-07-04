// file : carry_lookahead_adder.v
// N bit Carry-lookahead adder
// This module models the logic of a Carry-Lookahead Adder behaviorally.
// The carry logic is described as a simple ripple chain, which allows
// modern synthesis tools to infer and map it to high-speed, dedicated
// carry-chain hardware on the target FPGA.
module carry_lookahead_adder#(parameter N = 16)(
    input wire [N-1:0] a,
    input wire [N-1:0] b,
    input wire cin,
    output wire [N-1:0] sum,
    output wire cout
    );
    wire [N-1:0] p;
    wire [N-1:0] g;
    wire [N:0] c;
    assign c[0] = cin;
    assign p = a ^ b;
    assign g = a & b;
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin: CLA
            assign c[i+1] = g[i] | (p[i] & c[i]);
        end
    endgenerate
    assign sum = p ^ c[N-1:0];
    assign cout = c[N];
endmodule