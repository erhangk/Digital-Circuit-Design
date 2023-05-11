`timescale 1ns/1ps
module tb_lab3_g8_p5 ();
    logic a_tb,b_tb,c_tb,d_tb;
    logic F;

lab3_g8_p5 dut0(a_tb,b_tb,c_tb,d_tb,F,Y); 


initial begin

    a_tb = 0; b_tb = 0; c_tb = 0; d_tb = 0; #10
    a_tb = 0; b_tb = 0; c_tb = 0; d_tb = 1; #10
    a_tb = 0; b_tb = 0; c_tb = 1; d_tb = 0; #10
    a_tb = 0; b_tb = 0; c_tb = 1; d_tb = 1; #10
    a_tb = 0; b_tb = 1; c_tb = 0; d_tb = 0; #10
    a_tb = 0; b_tb = 1; c_tb = 0; d_tb = 1; #10
    a_tb = 0; b_tb = 1; c_tb = 1; d_tb = 0; #10
    a_tb = 0; b_tb = 1; c_tb = 1; d_tb = 1; #10
    a_tb = 1; b_tb = 0; c_tb = 0; d_tb = 0; #10
    a_tb = 1; b_tb = 0; c_tb = 0; d_tb = 1; #10
    a_tb = 1; b_tb = 0; c_tb = 1; d_tb = 0; #10
    a_tb = 1; b_tb = 0; c_tb = 1; d_tb = 1; #10
    a_tb = 1; b_tb = 1; c_tb = 0; d_tb = 0; #10
    a_tb = 1; b_tb = 1; c_tb = 0; d_tb = 1; #10
    a_tb = 1; b_tb = 1; c_tb = 1; d_tb = 0; #10
    a_tb = 1; b_tb = 1; c_tb = 1; d_tb = 1; #10

    $stop;
end
endmodule
