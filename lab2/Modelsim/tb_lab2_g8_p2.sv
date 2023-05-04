`timescale 1ns/1ps
module tb_lab2_g8_p2 ();
    logic x0_tb, x1_tb, x2_tb, x3_tb;
    logic A_tb, B_tb, C_tb, D_tb, E_tb, F_tb, G_tb;
 
lab2_g8_p2 dut0(x0_tb, x1_tb, x2_tb, x3_tb, A_tb, B_tb, C_tb, D_tb, E_tb, F_tb, G_tb); 

initial begin

    x3_tb = 0; x2_tb = 0; x1_tb = 0; x0_tb = 0; #10
    x3_tb = 0; x2_tb = 0; x1_tb = 0; x0_tb = 1; #10
    x3_tb = 0; x2_tb = 0; x1_tb = 1; x0_tb = 0; #10
    x3_tb = 0; x2_tb = 0; x1_tb = 1; x0_tb = 1; #10
    x3_tb = 0; x2_tb = 1; x1_tb = 0; x0_tb = 0; #10
    x3_tb = 0; x2_tb = 1; x1_tb = 0; x0_tb = 1; #10
    x3_tb = 0; x2_tb = 1; x1_tb = 1; x0_tb = 0; #10
    x3_tb = 0; x2_tb = 1; x1_tb = 1; x0_tb = 1; #10
    x3_tb = 1; x2_tb = 0; x1_tb = 0; x0_tb = 0; #10
    x3_tb = 1; x2_tb = 0; x1_tb = 0; x0_tb = 1; #10
    x3_tb = 1; x2_tb = 0; x1_tb = 1; x0_tb = 0; #10
    x3_tb = 1; x2_tb = 0; x1_tb = 1; x0_tb = 1; #10
    x3_tb = 1; x2_tb = 1; x1_tb = 0; x0_tb = 0; #10
    x3_tb = 1; x2_tb = 1; x1_tb = 0; x0_tb = 1; #10
    x3_tb = 1; x2_tb = 1; x1_tb = 1; x0_tb = 0; #10
    x3_tb = 1; x2_tb = 1; x1_tb = 1; x0_tb = 1; #10

    $stop;
end

endmodule
