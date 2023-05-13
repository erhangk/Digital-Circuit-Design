module lab3_g8_p5(
input logic a,b,c,d,
output logic F,Y

);
assign vdd = 1;
assign gnd = 0;
logic [15:0] min,max;
logic n0,n1,n2,n3,n4;
decoder4x16 dec(a,b,c,d,min);

mux2 inst0(min[1],vdd,min[3],n0);
mux2 inst1(min[7],vdd,min[11],n1);
mux2 inst2(min[12],vdd,min[13],n2);

mux2 inst3(n0,vdd,n1,n3);
mux2 inst4(n2,vdd,min[15],n4);

mux2 inst5(n3,vdd,n4,F);

logic not2,not3,not4,not5,not7,and1,and2,and3;
decoder4x16 dec1(a,b,c,d,max);

NOTG notinst0(max[2],not2);
NOTG notinst1(max[3],not3);
NOTG notinst2(max[4],not4);
NOTG notinst3(max[5],not5);
NOTG notinst4(max[7],not7);

mux2 inst6(gnd,not2,not3,and1);
mux2 inst7(gnd,not4,not5,and2);
mux2 inst8(gnd,and2,not7,and3);
mux2 inst9(gnd,and1,and3,Y);

endmodule

