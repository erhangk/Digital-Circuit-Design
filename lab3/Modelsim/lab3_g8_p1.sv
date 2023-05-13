`timescale 1ns/1ps

module NOTG(
input logic a,
output logic not_a
);
assign not_a = ~(a&a);
endmodule


module mux2(
    input logic a,b,s,
    output logic y
);
//assign ns = ~(s&s);
NOTG inst0(s,ns);
assign y1 = ~((ns&a)&(ns&a)); //nand gate 1
assign y2 = ~((s&b)&(s&b));  //nand gate 2 

assign y = ~((y1&y2)&(y1&y2));
endmodule

module lab3_g8_p1(
    input logic a,b,s,
    output logic y
);
//assign ns = ~(s&s);
NOTG inst0(s,ns);
assign y1 = ~((ns&a)&(ns&a)); //nand gate 1
assign y2 = ~((s&b)&(s&b));  //nand gate 2 

assign y = ~((y1&y2)&(y1&y2));
endmodule