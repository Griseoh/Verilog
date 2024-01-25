`timescale 1ns/1ns
`include "Question9.v"

module MUX2x1_tb;
    
    reg [1:0] data;
    reg selo;
    wire y;

    MUX2x1 uut(.a(data[1]), .b(data[0]), .selo(selo), .y(y));

    initial
    begin
        $dumpfile("MUX2x1.vcd");
        $dumpvars(0, MUX2x1_tb);

        #2 data = 2'b00;
        #2 selo = 1'b0;
        #2 selo = 1'b1;
        #2 selo = 1'b0;
        
        #2 data = 2'b01;
        #2 selo = 1'b0;
        #2 selo = 1'b1;
        #2 selo = 1'b0;

        #2 data = 2'b10;
        #2 selo = 1'b0;
        #2 selo = 1'b1;
        #2 selo = 1'b0;

        #2 data = 2'b11;
        #2 selo = 1'b0;
        #2 selo = 1'b1;
    end

    initial
    begin
        $monitor("t=%2d, data=%2b, selo=%1b, out=%1b", $time, data, selo, y);
        #40 $finish;
    end
endmodule