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