`timescale 1ns/1ps
module tb_lab4_g8_p2;
  logic [4:0] A, B;
  logic [4:0] S;
  logic Cout;

  RCA dut0(.A(A), .B(B), .S(S) ,. Cout(Cout));

  initial begin
    repeat (16) begin
      A = $random; 	
      B = $random;	
    #10;
    end
    $stop;
  end
endmodule

