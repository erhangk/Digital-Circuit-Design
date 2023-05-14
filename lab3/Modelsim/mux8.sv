module mux8(

input logic [7:0] I,  //8 input + 3 select line
input logic [2:0] s,
output logic y
);
logic y1,y2;

mux4 mux4_1(I[3:0],s[1:0],y1);
mux4 mux4_2(I[7:4],s[1:0],y2);
mux2 mux4_3(y1,y2,s[2],y); //4x1 mux is also can be used
endmodule