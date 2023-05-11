`timescale 1ns/1ps
module tb_lab3_g8_p4 ();
    logic a0_tb,a1_tb,a2_tb,a3_tb;
    logic [15:0] d_tb;

decoder4x16 dut0(a0_tb,a1_tb,a2_tb,a3_tb,d_tb); 


initial begin

    a3_tb = 0; a2_tb = 0; a1_tb = 0; a0_tb = 0; #10
    a3_tb = 0; a2_tb = 0; a1_tb = 0; a0_tb = 1; #10
    a3_tb = 0; a2_tb = 0; a1_tb = 1; a0_tb = 0; #10
    a3_tb = 0; a2_tb = 0; a1_tb = 1; a0_tb = 1; #10
    a3_tb = 0; a2_tb = 1; a1_tb = 0; a0_tb = 0; #10
    a3_tb = 0; a2_tb = 1; a1_tb = 0; a0_tb = 1; #10
    a3_tb = 0; a2_tb = 1; a1_tb = 1; a0_tb = 0; #10
    a3_tb = 0; a2_tb = 1; a1_tb = 1; a0_tb = 1; #10
    a3_tb = 1; a2_tb = 0; a1_tb = 0; a0_tb = 0; #10
    a3_tb = 1; a2_tb = 0; a1_tb = 0; a0_tb = 1; #10
    a3_tb = 1; a2_tb = 0; a1_tb = 1; a0_tb = 0; #10
    a3_tb = 1; a2_tb = 0; a1_tb = 1; a0_tb = 1; #10
    a3_tb = 1; a2_tb = 1; a1_tb = 0; a0_tb = 0; #10
    a3_tb = 1; a2_tb = 1; a1_tb = 0; a0_tb = 1; #10
    a3_tb = 1; a2_tb = 1; a1_tb = 1; a0_tb = 0; #10
    a3_tb = 1; a2_tb = 1; a1_tb = 1; a0_tb = 1; #10

    $stop;
end
endmodule
