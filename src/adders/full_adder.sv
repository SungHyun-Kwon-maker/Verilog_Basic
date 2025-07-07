// file: full_adder.sv
// 1 bit Full Adder
module full_adder(
    input logic a, b, cin,
    output logic sum, cout
    );
    logic s1, c1, c2;
    half_adder uut_ha1(.a(a), .b(b), .sum(s1), .carry(c1));
    half_adder uut_ha2(.a(s1), .b(cin), .sum(sum), .carry(c2));
    or OR1(cout, c1, c2);
endmodule