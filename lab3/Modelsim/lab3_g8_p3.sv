`timescale 1ns/1ps
module lab3_g8_p3(
    input logic a0,a1,e, //e enable pin
    output logic d0,d1,d2,d3
);
logic na0,na1;
NOT inst0(a0,na0);
NOT inst1(a1,na1);

assign d0 = na1 & na0 & e;
assign d1 = na1 & a0 & e;
assign d2 = a1 & na0 & e;
assign d3 = a1 & a0 & e;


endmodule

module decoder(
    input logic a0,a1,e, //e enable pin
    output logic d0,d1,d2,d3
);
logic na0,na1;
NOT inst0(a0,na0);
NOT inst1(a1,na1);

assign d0 = na1 & na0 & e;
assign d1 = na1 & a0 & e;
assign d2 = a1 & na0 & e;
assign d3 = a1 & a0 & e;


endmodule
