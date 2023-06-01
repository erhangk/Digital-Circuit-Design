`timescale 1ns/1ps 

module tb_lab4_g8_p1 (); 
 logic d, clk; 
 logic q1, q2, q3; 

 d_latch dut0(d,clk,q1); 
 RE_d_flipflop dut1(d,clk,q2); 
 FE_d_flipflop dut2(d,clk,q3); 
 

always 
begin 
clk = 0; #10; clk = 1; #10; 
end 

initial begin 
 d = 0; #7; d = 1; #5; d = 0; #2; 
 d = 1; #4; d = 0; #3; d = 1; #3; 
 d = 0; #2; d = 1; #2; d = 0; #4; 
 d = 1; #2; d = 0; #2; d = 1; #6; 
 d = 0; #10;
 $stop; 
 end 
endmodule