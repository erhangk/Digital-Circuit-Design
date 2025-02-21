module mux4(

input logic [3:0] I, //4 input + 2 select line
input logic [1:0] s,
output logic y
);
logic y1,y2;

mux2 mux2_1(I[0],I[1],s[0],y1);
mux2 mux2_2(I[2],I[3],s[0],y2);
mux2 mux2_3(y1,y2,s[1],y);
endmodule



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