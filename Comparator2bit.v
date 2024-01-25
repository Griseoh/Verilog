`include "Comparator.v"
`timescale 1ns/1ns

module Comparator2bit (A,B,Y);

    input [1:0] A,B;
    output [5:0] Y;

    wire [5:0] w0, w1;

    Comparator1bit Cm0(A[0], B[0], w0);
    Comparator1bit Cm1(A[1], B[1], w1);

    assign Y[5] = (w0[5] & w1[5]);
    assign Y[4] = (w0[4] | w1[4]);
    assign Y[3] = ((w1[3] & (w0[2]|w0[3]|w0[5]))|(w1[5] & w0[3]));
    assign Y[2] = ((w1[2] & (w0[2]|w0[3]|w0[5]))|(w1[5] & w0[2]));
    assign Y[1] = (Y[5]|Y[3]);
    assign Y[0] = (Y[5]|Y[2]);
    
endmodule
    