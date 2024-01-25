`include "clock.v"
`timescale 1ps/1ps

module clock_tb;
    wire c;
    clock uut(.c(c));
    
    initial
    begin
        $dumpfile("clock.vcd");
        $dumpvars(0, clock_tb);
    end

    initial
    begin
        $monitor("t=%2d, c =%1b", $time, c);
        #350 $finish;
    end
endmodule