`timescale 1ns/1ps

module lab3_g8_p2_1(

input logic [15:0] I, 
input logic [3:0] s,
output logic mux4out,mux8out,mux16out
);

logic y1,y2;
mux2 mux2_1(I[0],I[1],s[0],y1);
mux2 mux2_2(I[2],I[3],s[0],y2);
mux2 mux2_3(y1,y2,s[1],mux4out);

logic y3,y4;
mux4 mux4_1(I[3:0],s[1:0],y3);
mux4 mux4_2(I[7:4],s[1:0],y4);
mux2 mux4_3(y3,y4,s[2],mux8out); //4x1 mux is also can be used

logic y5,y6;
mux8 mux8_1(I[7:0],s[2:0],y5);
mux8 mux8_2(I[15:8],s[2:0],y6);
mux2 mux8_3(y5,y6,s[3],mux16out); // 8x1 mux is also can be used


endmodule