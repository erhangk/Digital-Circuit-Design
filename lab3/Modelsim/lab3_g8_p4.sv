module lab3_g8_p4(

input logic a0,a1,a2,a3,
output logic [15:0] d

);
assign e = 1;
logic x0,x1,x2,x3;
decoder dec0(a2,a3,e,x0,x1,x2,x3);
decoder dec1(a0,a1,x0,d[0],d[1],d[2],d[3]);
decoder dec2(a0,a1,x1,d[4],d[5],d[6],d[7]);
decoder dec3(a0,a1,x2,d[8],d[9],d[10],d[11]);
decoder dec4(a0,a1,x3,d[12],d[13],d[14],d[15]);
endmodule

module decoder3x8(

input logic a0,a1,a2,
output logic [7:0] d

);
logic na0,na1,na2;
NOT inst0(a0,na0);
NOT inst1(a1,na1);
NOT inst2(a2,na2);

decoder dec1(a0,a1,na2,d[0],d[1],d[2],d[3]);
decoder dec2(a0,a1,a2,d[4],d[5],d[6],d[7]);

endmodule

module decoder4x16(

input logic a0,a1,a2,a3,
output logic [15:0] d

);
assign e = 1;
logic x0,x1,x2,x3;
decoder dec0(a2,a3,e,x0,x1,x2,x3);
decoder dec1(a0,a1,x0,d[0],d[1],d[2],d[3]);
decoder dec2(a0,a1,x1,d[4],d[5],d[6],d[7]);
decoder dec3(a0,a1,x2,d[8],d[9],d[10],d[11]);
decoder dec4(a0,a1,x3,d[12],d[13],d[14],d[15]);
endmodule