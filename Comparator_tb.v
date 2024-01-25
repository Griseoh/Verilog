`include "Comparator.v"
`timescale 1ns/1ns

module Comparator1bit_tb;

    reg A,B;
    wire [5:0] Y;

    Comparator1bit uut (.A(A), .B(B), .Y(Y));

    initial 
    begin
        $dumpfile("Comparator.vcd");
        $dumpvars(0, Comparator1bit_tb);

        #2 {A,B} = 2'b00;
        #2 {A,B} = 2'b01;    
        #2 {A,B} = 2'b10;
        #2 {A,B} = 2'b11;
    end

    initial
    begin
        $monitor("t=%2d, A=%1b, B=%1b, Y=%6b", $time,A,B,Y);
        #10 $finish;
    end
endmodule