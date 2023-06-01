module tb_lab4_g8_p3();

logic [31:0] a, b, y, y_expected;
logic [1:0] ALUControl;
logic [3:0] ALUFlags, ALUFlags_expected;
logic [31:0] vectornum, errors;
logic [103:0] testvectors[10000:0];

alu dut0(a, b, ALUControl, y, ALUFlags);

always begin
clk = 1; #50; clk = 0; #50;
end
// at start of test, load vectors
initial begin
$readmemh("ex5.14_alu.tv", testvectors);
vectornum = 0; errors = 0;
end
// apply test vectors at rising edge of clock
always @(posedge clk)
begin
#1;
ALUControl = testvectors[vectornum][101:100];
a = testvectors[vectornum][99:68];
b = testvectors[vectornum][67:36];
y_expected = testvectors[vectornum][35:4];
ALUFlags_expected = testvectors[vectornum][3:0];
end
// check results on falling edge of clock
always @(negedge clk)
begin
if (y !== y_expected || ALUFlags !== ALUFlags_expected) begin
$display("Error in vector %d", vectornum);
$display(" Inputs : a = %h, b = %h, ALUControl = %b", a, b, ALUControl);
$display(" Outputs: y = %h (%h expected), ALUFlags = %h (%h expected)",
y, y_expected, ALUFlags, ALUFlags_expected);
errors = errors+1;
end
vectornum = vectornum + 1;
if (testvectors[vectornum][0] === 1'bx) begin
$display("%d tests completed with %d errors", vectornum, errors);
$stop;
end
end
endmodule
