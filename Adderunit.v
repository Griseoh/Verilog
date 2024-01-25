module au (A, B, C, sign, zero, carry, parity, overflow);

    input [15:0]A,B;
    output [15:0]C;
    output sign, zero, carry, parity, overflow;

    assign {carry,C} = A+B;
    assign sign = C[15];
    assign zero = ~|C;
    assign parity = ~^C;
    assign overflow = (A[15]&B[15]&~C[15]|~A[15]&~B[15]&C[15]);

endmodule
