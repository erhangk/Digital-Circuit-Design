`timescale 1ns/1ps

module lab3_g8_p2(
     input logic a,b,
     output logic andgate,nandgate,orgate,norgate
);
assign gnd = 0;
assign vdd = 1;

logic nb;
NOTG inst0(b,nb);

mux2 inst1(gnd,b,a,andgate); //andgate

mux2 inst2(vdd,nb,a,nandgate); //nandgate

mux2 inst3(b,vdd,a,orgate); //orgate

mux2 inst4(nb,gnd,a,norgate); //norgate
endmodule
