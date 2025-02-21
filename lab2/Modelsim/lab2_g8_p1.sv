// Y = AB'C + C'D 
`timescale 1ns/1ps
module lab2_g8_p1(
    input logic a,b,c,d,
    output logic y,y1,y2
);

assign #2 nb = ~b;
assign #2 nc = ~c;

assign #2 ac = a&c;
assign #2 anb_c = ac & nb;
assign #2 nc_d = nc & d;

assign #2 y = anb_c | nc_d; /*before fixing glitch  Y = AB'C + C'D*/


assign #2 ad = a & d;
assign #2 ad_nb = ad & nb;
assign #2 y1 = y | ad_nb; /*after fixing glitch seperate lag Y = AB'C + C'D +AB'D*/
assign #2 y2 =  anb_c| nc_d | ad_nb; /*after fixing glitch Y = AB'C + C'D +AB'D*/

endmodule