// file: mux_2x1.sv
// N-bit 2-to-1 Multiplexer
module mux_2x1 #(parameter N = 4)(
    input  logic [N-1:0] d0, d1,
    input  logic sel,
    output logic [N-1:0] y
    );
    assign y = sel ? d1 : d0;
endmodule