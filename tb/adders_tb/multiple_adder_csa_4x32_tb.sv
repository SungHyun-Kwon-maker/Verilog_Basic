// file: multiple_adder_csa_4x32_tb.sv
// Testbench for 4x32 Carry Save Adder(CSA)
`timescale 1 ns / 1 ps

module multiple_adder_csa_4x32_tb;
    logic [31:0] x, y, z, w;
    logic [34:0] final_sum;
    multiple_adder_csa_4x32 uut(
    .x(x),
    .y(y),
    .z(z),
    .w(w),
    .final_sum(final_sum));
    initial begin
        $monitor("Time = %0t, x = %h, y = %h, z = %h, w = %h, final_sum = %h",
                $time, x, y, z, w, final_sum);
        x = 'h00000003;
        y = 'h0000000A;
        z = 'h00000001;
        w = 'h00000002;
        #10
        x = 'hAAAAAAAA;
        y = 'h55555555;
        z = 'hAAAAAAAA;
        w = 'h55555555;
        #10;
        x = 'hFFFFFFFF;
        y = 'h00000001;
        z = 'h00000000;
        w = 'h00000000;
        #10;
        #10; $finish;
    end
endmodule