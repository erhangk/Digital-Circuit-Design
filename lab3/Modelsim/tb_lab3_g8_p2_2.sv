`timescale 1ns/1ps
module tb_lab3_g8_p2_2 ();
    logic [3:0] I_tb;
    logic [1:0] s_tb;

mux4 dut0(I_tb,s,y); 

initial begin
    

    $stop;
end	
	
endmodule

