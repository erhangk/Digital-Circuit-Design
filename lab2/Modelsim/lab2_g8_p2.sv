/* 
A= x1+x3
B= x0x3+x0x2'
C= x0x2'+x1x2
D= x1+x2
E= x0'x1x3'+x1'x2
F= x0'x1+x0x1'x3'+x0'x2
G=x0x3+x1+x0'x3'
*/
`timescale 1ns/1ps
module lab2_g8_p2(
    input logic x0,x1,x2,x3,
    output logic A,B,C,D,E,F,G
);

assign A = x1 | x3;
assign B = x0&x3 | x0&~x2;
assign C = x0&~x2 | x1&x2;
assign D = x1 | x2;
assign E = ~x0&x1&~x3 | ~x1&x2;
assign F = ~x0&x1 | x0&~x1&~x3 | ~x0&x2;
assign G = x0&x3 | x1 | ~x0&~x3;


endmodule
