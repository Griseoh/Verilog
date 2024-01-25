`include "Comparator2bit.v"
`timescale 1ns/1ns

module Comparator2bit_tb;

    reg [1:0] A,B;
    wire [5:0] Y;

    Comparator2bit uut (.A(A), .B(B), .Y(Y));

    initial 
    begin
        $dumpfile("Comparator.vcd");
        $dumpvars(0, Comparator2bit_tb);

        #2 A = 2'b00; B = 2'b00;
        #2 A = 2'b00; B = 2'b01;    
        #2 A = 2'b00; B = 2'b10;
        #2 A = 2'b00; B = 2'b11;
        #2 A = 2'b01; B = 2'b00;
        #2 A = 2'b01; B = 2'b01;
        #2 A = 2'b01; B = 2'b10;
        #2 A = 2'b01; B = 2'b11;
        #2 A = 2'b10; B = 2'b00;
        #2 A = 2'b10; B = 2'b01;
        #2 A = 2'b10; B = 2'b10;
        #2 A = 2'b10; B = 2'b11;
        #2 A = 2'b11; B = 2'b00;
        #2 A = 2'b11; B = 2'b01;
        #2 A = 2'b11; B = 2'b10;
        #2 A = 2'b11; B = 2'b11;

    end
    initial
    begin
        $monitor("t=%2d, A=%2b, B=%2b, Y=%5b", $time,A,B,Y);
        #40 $finish;
    end
endmodule