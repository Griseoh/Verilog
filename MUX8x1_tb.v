`timescale 1ns/1ns
`include "Question9.v"

module MUX8x1_tb;
    
    reg [7:0] data;
    reg [2:0] sett;
    wire y;

    MUX8x1 uut(.data(data), .sett(sett), .y(y));

    initial
    begin
        $dumpfile("MUX8x1.vcd");
        $dumpvars(0, MUX8x1_tb);

        #2 data = 8'h8d;
        #2 sett = 3'b000;
        #2 sett = 3'b001;
        #2 sett = 3'b010;
        #2 sett = 3'b011;
        #2 sett = 3'b100;
        #2 sett = 3'b101;
        #2 sett = 3'b110;
        #2 sett = 3'b111;
      
    end

    initial
    begin
        $monitor("t=%2d, data=%4b, sett=%3b, out=%1b", $time, data, sett, y);
        #40 $finish;
    end
endmodule