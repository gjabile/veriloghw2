`timescale 1ns / 1ps
//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0] A,
    input [1:0] B,
    input [1:0] C,
    input [1:0] D,
    input [1:0] SEL,
    output reg [1:0] X
);

//YOUR CODE HERE
always @(*) begin
    if (SEL == 2'b00) begin
        X = A;
    end
    else if (SEL == 2'b01) begin
        X = B;
    end
    else if (SEL == 2'b10) begin
        X = C;
    end
    else if (SEL == 2'b11) begin
        X = D;
    end
    else begin
        X = 2'b00; // Default case, outputs 2'b00 when SEL is not any of the specified values
    end
end
endmodule
