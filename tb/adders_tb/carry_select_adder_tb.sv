// file: carry_select_adder_tb.sv
// Testbench for N bit Carry Select Adder (CSLA)
`timescale 1 ns / 1 ps

module carry_select_adder_tb;
    parameter N = 32;
    parameter SIZE = 4;
    logic [N-1:0] a, b;
    logic cin;
    logic [N-1:0] sum;
    logic cout;
    carry_select_adder #(.N(N), .SIZE(SIZE)) uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time = %0t, a = %h, b = %h, cin = %b, sum = %h, cout = %b", $time, a, b, cin, sum, cout);
        a = 'h00000003; b = 'h0000000A; cin = 1'b0; #10;
        a = 'hAAAAAAAA; b = 'h55555555; cin = 1'b0; #10;
        a = 'hFFFFFFFF; b = 'h00000001; cin = 1'b0; #10;
        a = 'hA5A5A5A5; b = 'h5A5A5A5A; cin = 1'b0; #10;
        #10
        $finish;
    end
endmodule
