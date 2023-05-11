`timescale 1ns/1ps
module tb_lab3_g8_p1 ();
    logic a_tb, b_tb, s_tb;
    logic y_tb;

mux2 dut0(a_tb, b_tb, s_tb, y_tb); 

initial begin

    s_tb = 0; a_tb = 0; b_tb = 0; #10
    s_tb = 0; a_tb = 0; b_tb = 1; #10
    s_tb = 0; a_tb = 1; b_tb = 0; #10
    s_tb = 0; a_tb = 1; b_tb = 1; #10
    s_tb = 1; a_tb = 0; b_tb = 0; #10
    s_tb = 1; a_tb = 0; b_tb = 1; #10
    s_tb = 1; a_tb = 1; b_tb = 0; #10
    s_tb = 1; a_tb = 1; b_tb = 1; #10
    $stop;
end

endmodule