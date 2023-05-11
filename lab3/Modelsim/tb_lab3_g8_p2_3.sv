`timescale 1ns/1ps
module tb_lab3_g8_p2_3 ();
    logic [7:0] I_tb;
    logic [1:0] s_tb;

mux8 dut0(I_tb,s_tb,y);

initial begin

    $stop;
end	
	
endmodule

