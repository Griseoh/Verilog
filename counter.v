module simplecounter (clk, rst, count);
    input clk, rst;
    output [3:0]count;
    reg [3:0]count;

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            count = 4'b0;
        else
            count = count + 4'b1;
    end

endmodule