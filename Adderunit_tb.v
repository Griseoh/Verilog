`include "Adderunit.v"

module autest;

reg [15:0]a,b;
wire [15:0]c;
wire s,zr,cy,p,v;

au dut(a,b,c,s,zr,cy,p,v);

initial begin

    $dumpfile("Adderunit.vcd");
    $dumpvars(0, autest);

    $monitor($time,"a=%h, b=%h, c=%h, s=%b, zr=%b, cy=%b, p=%b, v=%b",a,b,c,s,zr,cy,p,v);

    #5 a = 16'h8fff; b = 16'h8000;
    #5 a = 16'hfffe; b = 16'h0002;
    #5 a = 16'hAAAA; b = 16'h5555;
    #5 $finish;

end

endmodule