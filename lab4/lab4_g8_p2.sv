`timescale 1ns/1ps
module halfadder(
    input logic A,B,
    output logic Cout, S
);
// Cout = AB
// S = A xor B
assign Cout = A&B;
assign S = A^B;
endmodule

module fulladder(
    input logic A,B,Cin,
    output logic Cout, S
);
logic Cout0,S0,Cout1;
halfadder ints0(A,B,Cout0,S0);
halfadder ints1(S0,Cin,Cout1,S);
assign Cout = Cout0 | Cout1;
endmodule

module lab4_g8_p2(
	input logic [4:0] A,
	input logic [4:0] B,
	output logic [4:0] S, 
	output logic Cout
);
logic c0,c1,c2,c3;
fulladder fa0(A[0], B[0], 0, c0, S[0]);
fulladder fa1(A[1], B[1], c0, c1, S[1]);
fulladder fa2(A[2], B[2], c1, c2, S[2]);
fulladder fa3(A[3], B[3], c2, c3, S[3]);
fulladder fa4(A[4], B[4], c3, Cout, S[4]);

endmodule