`timescale 1ps/1ps

module clock(c);

    output reg c;
    initial 
        begin
            c = 1'b0;
            repeat(30)
                #10 c = ~c;
        end
endmodule