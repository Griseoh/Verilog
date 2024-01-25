`timescale 1ns/1ns
`include "counter.v"

module counter_tb;

reg clk, rst;
wire [3:0]counter;
simplecounter uut(clk, rst, counter);
initial begin 
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    
    rst = 1;
    #20
    rst = 0;
    #100;
    
    $display("end of testing");
    $stop;
end
endmodule