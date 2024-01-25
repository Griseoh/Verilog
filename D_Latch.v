`timescale 1ps/1ps
module d_latch(Q,D,En);
    output reg Q;
    input D, En;
    always @ (En, D)
        if (En == 1'b1)
            Q <= D;
endmodule