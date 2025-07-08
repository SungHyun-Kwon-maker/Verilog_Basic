// file: carry_save_adder_stage_tb.sv
// Testbench for Carry Save Adder Stage
`timescale 1 ns / 1 ps
module carry_save_adder_stage_tb;
    parameter N = 4;
    logic [N-1:0] a, b, cin;
    logic [N-1:0] sum, cout;
    carry_save_adder_stage #(.N(N)) uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout));
    initial begin
        $monitor("Time = %0t, a = %h, b = %h, cin = %b, sum = %h, cout = %b",
                $time, a, b, cin, sum, cout);
        a = 4'b0000; b = 4'b0000; cin = 4'h0; #10;
        a = 4'b1010; b = 4'b0101; cin = 4'hF; #10;
        a = 4'b1111; b = 4'b1111; cin = 4'hF; #10;
        a = 4'b0011; b = 4'b0001; cin = 4'hC; #10;
        #10
        $finish;
    end
endmodule