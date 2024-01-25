`timescale 1ps/1ps
`include "D_Latch.v"

module d_latch_tb;
    reg D,En;
    wire Q;

    d_latch uut(.D(D), .Q(Q), .En(En));

    initial
    begin

        $dumpfile("D_Latch.vcd");
        $dumpvars(0, d_latch_tb);

        $monitor($time , " D=%b, Q =%b, En=%b", D,Q,En);

        #2 En = 1'b0; D = 1'b0;
        #2 En = 1'b0; D = 1'b1;
        #2 En = 1'b1; D = 1'b0;
        #2 En = 1'b1; D = 1'b1;

    end

endmodule