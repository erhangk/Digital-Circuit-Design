
// Y = TEU'+GEU'+G'UE+GTU+GTE
module lab1_g8_p2(
    input logic g, t, u, e,
    output logic y
);

assign y = t&e&~u | g&e&~u | ~g&u&e | g&t&u | g&t&e;

endmodule