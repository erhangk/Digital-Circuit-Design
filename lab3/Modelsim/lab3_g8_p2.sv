`timescale 1ns/1ps

module lab3_g8_p2(
     input logic a,b,
     output logic andgate,nandgate,orgate,norgate
);
assign gnd = 0;
assign vdd = 1;

mux2 AND(gnd,b,a,andgate); //andgate

mux2 NAND(vdd,~(b&b),a,nandgate); //nandgate

mux2 OR(b,vdd,a,orgate); //orgate

mux2 NOR(~(b&b),gnd,a,norgate); //norgate
endmodule
