// Y = G?TU?E + GTUE + GT?U?E + GTU?E + G?TUE + G?T?UE + GTUE?
module lab1_g8_p1(
    input logic g, t, u, e,
    output logic y
);

assign y = ~g & t & ~u & e | g & t & u & e | g & ~t & ~u & e | g & t & ~u & e | ~g & t & u & e | ~g & ~t & u & e | g & t & u & ~e;

endmodule
