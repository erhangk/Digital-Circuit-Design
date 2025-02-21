// X = E'T' + E'U
// Y = U' + G'
module lab1_g8_p3(
    input logic g, t, u, e,
    output logic x,y
);


assign x = ~e&~t | ~e&u;

assign y = ~u | ~g;

endmodule