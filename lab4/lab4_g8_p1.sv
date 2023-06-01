`timescale 1ns/1ps 

module d_latch(  //d latch
input logic D,clk,
output logic Q
);

always_latch
 if (clk) Q <= D;
endmodule

module RE_d_flipflop(  //Rising Edge Flip Flop
input logic D, clk, 
output logic Q
);

always_ff @(posedge clk) 
 Q <= D; 

endmodule 


module FE_d_flipflop(  //Falling Edge Flip Flop
input logic D, clk, 
output logic Q
);

always_ff @(negedge clk) 
 Q <= D; 

endmodule 

module lab4_g8_p1(
input logic D, clk, 
output logic Q1,Q2,Q3
);

d_latch inst0(D,clk,Q1);
RE_d_flipflop inst1(D,clk,Q2);
FE_d_flipflop inst2(D,clk,Q3);

endmodule


