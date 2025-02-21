`timescale 1ns/1ps
module lab5_g8_p1 (
  input logic clk,
  input logic reset,
  input logic en,
  output logic [4:0] psc,
  output logic tick
);

  always_ff @(posedge clk) begin
    if (!reset)
      psc <= 0;
    else if (en)
      psc <= psc + 1;
  end

  always_ff @(posedge clk) begin
    if (reset) begin
      tick <= 0;
    end
    else if (psc == 5'd30) begin
      psc <= 0;
      tick <= 1;
    end
    else
      tick <= 0;
    end


endmodule
