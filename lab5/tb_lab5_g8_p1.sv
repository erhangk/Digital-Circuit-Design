`timescale 1ns/1ps
module upcounter_testbench();
logic clk, reset,en,tick;
logic [4:0] psc;

counter dut(clk, reset, en, psc, tick);
initial begin 
clk=0;
forever #300 clk=~clk;
end
initial begin
en = 1;
reset=1;
#20;
reset=0;

repeat (72) begin
  #1200; end


$stop; 
end
endmodule 