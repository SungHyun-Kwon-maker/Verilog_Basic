// file: ripple_carry_adder_tb.sv
// Testbench for N bit Ripple Carry Adder (RCA)
`timescale 1 ns / 1 ps

module ripple_carry_adder_tb;
    parameter N = 32;
    logic [N-1:0] a, b;
    logic cin;
    logic [N-1:0] sum;
    logic cout;
    ripple_carry_adder #(.N(N)) uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time = %0t, a = %h, b = %h, cin = %b, sum = %h, cout = %h", $time, a, b, cin, sum, cout);
        a = 'h00000003; b = 'h0000000A; cin = 1'b0; #10;
        a = 'hAAAAAAAA; b = 'h55555555; cin = 1'b0; #10;
        a = 'hFFFFFFFF; b = 'h00000001; cin = 1'b0; #10;
        a = 'hA5A5A5A5; b = 'h5A5A5A5A; cin = 1'b0; #10;
        #10
        $finish;
    end
endmodule