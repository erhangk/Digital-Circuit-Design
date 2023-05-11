`timescale 1ns/1ps
module tb_lab3_g8_p2_1 ();
    logic a_tb, b_tb;
    logic and_tb, nand_tb, or_tb, nor_tb;

lab3_g8_p2 dut0(a_tb, b_tb, and_tb, nand_tb, or_tb, nor_tb); 

initial begin

    a_tb = 0; b_tb = 0; #10
    a_tb = 0; b_tb = 1; #10
    a_tb = 1; b_tb = 0; #10
    a_tb = 1; b_tb = 1; #10

    $stop;
end	
	
endmodule

