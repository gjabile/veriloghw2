`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 08:27:52 PM
// Design Name: 
// Module Name: q2_tb_1008656
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexer_tb();

reg [1:0] A;
reg [1:0] B;
reg [1:0] C;
reg [1:0] D;
reg [1:0] SEL;
wire [1:0] X;

multiplexer multiplexer_u0(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
);

initial begin
    // Test cases
    A = 2'b10; B = 2'b01; C = 2'b00; D = 2'b11; SEL = 2'b00; #10;
    A = 2'b10; B = 2'b01; C = 2'b00; D = 2'b11; SEL = 2'b01; #10;
    A = 2'b10; B = 2'b01; C = 2'b00; D = 2'b11; SEL = 2'b10; #10;
    A = 2'b10; B = 2'b01; C = 2'b00; D = 2'b11; SEL = 2'b11; #10;


    $finish;
end

endmodule

