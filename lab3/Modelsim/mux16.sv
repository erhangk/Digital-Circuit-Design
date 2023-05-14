module mux16(

input logic [15:0] I,  //16 input + 4 select line
input logic [3:0] s,
output logic y
);
logic y1,y2;

mux8 mux8_1(I[7:0],s[2:0],y1);
mux8 mux8_2(I[15:8],s[2:0],y2);
mux2 mux8_3(y1,y2,s[3],y); // 8x1 mux is also can be used
endmodule
