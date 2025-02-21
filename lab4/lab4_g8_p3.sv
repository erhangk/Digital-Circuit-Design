module lab4_g8_p3(
input logic [31:0] a, b,
input logic [3:0] ALUControl,
output logic [31:0] Result,
output logic [3:0] ALUFlags,
output logic hata

);

logic neg, zero, c, overflow;
logic [31:0] condinvb;
logic [32:0] sum;


always
case (ALUControl[3:0])
//4'b????: Result = 0;
4'b?000: Result = sum ;   		   //ADDITION and SUBSTRACTION
//4'b1000: Result = sum;   		//SUBSTRACTION
4'b0111: Result = a & b; 	  	   //AND
4'b0110: Result = a | b;  		   //OR
4'b0100: Result = a ^ b; 			//XOR   
4'b0010:  Result = (~zero)&(neg==overflow); //signed compare higher?
4'b0011:  Result = c&(~zero); //unsigned compare higher? 

4'b0001:  Result = a << b; //0001 shift left logical 
4'b0101:  Result = a >> b; //0101 shift right logical 
4'b1101: Result = a >>> b; //1101 shift right arithmetic
default: hata = 1;
endcase

assign condinvb = ALUControl[0] ? ~b : b;
assign sum = a + condinvb + ALUControl[0];

assign neg = Result[31];
assign zero = (Result == 32'b0);
assign c = (ALUControl[1] == 1'b0) & sum[32];
assign overflow = (ALUControl[1] == 1'b0) & ~(a[31] ^ b[31] ^ ALUControl[0]) & (a[31] ^ sum[31]);

assign ALUFlags = {neg, zero, c, overflow};


endmodule