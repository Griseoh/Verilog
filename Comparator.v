`timescale 1ns/1ns

module Comparator1bit (A,B,Y);
    
    input A,B;
    output [5:0] Y;

    assign Y[5] = ~((A)^(B));
    assign Y[4] = ((A)^(B));
    assign Y[3] = ((A)&(~(B)));
    assign Y[2] = ((~(A))&(B));
    assign Y[1] = ((A)|(~(B)));
    assign Y[0] = ((~(A))|(B));
    
endmodule