module tb_lab1_g8_p1 ();
    logic g, t, u, e;
    logic y;


lab1_g8_p1 dut0(g, t, u, e, y); 

initial begin

    g = 0; t = 0; u = 0; e = 0;        	 #10
    e = 1;                  		 #10
    u = 1; e = 0;                	 #10
    e = 1;                  		 #10
    t = 1; u = 0; e = 0;        	 #10
    e = 1;                  		 #10
    u = 1; e = 0;              		 #10
    e = 1;                   		 #10
    g = 1; t = 0; u = 0; e = 0;          #10
    e = 1;                    		 #10
    u = 1; e = 0;               	 #10
    e = 1;                   		 #10
    t = 1; u = 0; e = 0;           	 #10
    e = 1;                   		 #10
    u = 1; e = 0;               	 #10
    g = 1; t = 1; u = 1; e = 1;          #10

    $stop;
end


endmodule
