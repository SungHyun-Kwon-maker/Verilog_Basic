// file: full_adder_tb.sv
// Testbench for 1 bit Full Adder
`timescale 1 ns / 1 ps
module full_adder_tb;
    logic a, b, cin;
    logic sum, cout;
    full_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $monitor("Time : %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);
        a = 1'b0; b = 1'b0; cin = 1'b0; #10;
        a = 1'b0; b = 1'b0; cin = 1'b1; #10;
        a = 1'b0; b = 1'b1; cin = 1'b0; #10;
        a = 1'b0; b = 1'b1; cin = 1'b1; #10;
        a = 1'b1; b = 1'b0; cin = 1'b0; #10;
        a = 1'b1; b = 1'b0; cin = 1'b1; #10;
        a = 1'b1; b = 1'b1; cin = 1'b0; #10;
        a = 1'b1; b = 1'b1; cin = 1'b1; #10;
        #10;
        $finish;
    end
endmodule