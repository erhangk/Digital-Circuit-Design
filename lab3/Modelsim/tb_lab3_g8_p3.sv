`timescale 1ns/1ps
module tb_lab3_g8_p3 ();
    logic a0,a1,e;
    logic d0,d1,d2,d3;

decoder dut0(a0,a1,e,d0,d1,d2,d3); //enable pin is 1

initial begin
    e = 1;
    a1 = 0; a0 = 0;         	 #10
    a1 = 0; a0 = 1;         	 #10
    a1 = 1; a0 = 0;         	 #10
    a1 = 1; a0 = 1;         	 #10

    $stop;
end
endmodule
