// file: full_adder.v
// 1 bit full adder
module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
    );
    wire s1;
    wire c1;
    wire c2;
    
    half_adder HA1(.a(a), .b(b), .sum(s1), .carry(c1));
    half_adder HA2(.a(s1), .b(cin), .sum(sum), .carry(c2));
    
    or OR1(cout, c1, c2);
endmodule