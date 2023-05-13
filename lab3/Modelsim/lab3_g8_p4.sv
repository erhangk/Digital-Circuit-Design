module lab3_g8_p4(

input logic a0,a1,a2,a3,
output logic [23:0] d3x8,
output logic [7:0] d4x16
);

assign e = 1;
logic x0,x1,x2,x3;
decoder dec0(a2,a3,e,x0,x1,x2,x3);
decoder dec1(a0,a1,x0,d3x8[0],d3x8[1],d3x8[2],d3x8[3]);
decoder dec2(a0,a1,x1,d3x8[4],d3x8[5],d3x8[6],d3x8[7]);
decoder dec3(a0,a1,x2,d3x8[8],d3x8[9],d3x8[10],d3x8[11]);
decoder dec4(a0,a1,x3,d3x8[12],d3x8[13],d3x8[14],d3x8[15]);

logic na0,na1,na2;
NOTG inst0(a0,na0);
NOTG inst1(a1,na1);
NOTG inst2(a2,na2);

decoder dec5(a0,a1,na2,d4x16[0],d4x16[1],d4x16[2],d4x16[3]);
decoder dec6(a0,a1,a2,d4x16[4],d4x16[5],d4x16[6],d4x16[7]);
endmodule

module decoder3x8(

input logic a0,a1,a2,
output logic [7:0] d

);
logic na0,na1,na2;
NOTG inst0(a0,na0);
NOTG inst1(a1,na1);
NOTG inst2(a2,na2);

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