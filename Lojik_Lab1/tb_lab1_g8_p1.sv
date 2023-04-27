module tb_lab1_g8_p1 ( 
	logic G, T, U, E,
	logic Y
);

lab1_g8_p1 dut0 (G, T, U, E, Y); 

initial begin

	G = 0; T = 0; U = 0; E = 0; 		#10
	E = 1;					#10
	U = 1; E = 0;				#10
	E = 1;					#10
	T = 1; U = 0; E = 0;			#10
	E = 1;					#10
	U = 1; E = 0;				#10
	E = 1;					#10
	G = 1; T = 0; U = 0; E = 0;		#10
	E = 1;					#10
	U = 1; E = 0;				#10
	E = 1;					#10
	T = 1; U = 0; E = 0;			#10
	E = 1;					#10
	U = 1; E = 0;				#10
	G = 1; T = 1; U = 1; E = 1;		#10

	$stop;
end

endmodule
