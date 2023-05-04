

module tb_lab1_g8_p3 ();
    logic g_tb, t_tb, u_tb, e_tb;
    logic x_tb;
    logic y_tb;

lab1_g8_p3 dut0(g_tb, t_tb, u_tb, e_tb, x_tb,y_tb); 
//lab1_g8_p3 dut0(g_tb, t_tb, u_tb, e_tb, y_tb); 


initial begin

    g_tb = 0; t_tb = 0; u_tb = 0; e_tb = 0;        	 #10
    g_tb = 1;                  				 #10
    t_tb = 1; g_tb = 0;                			 #10
    g_tb = 1;                  				 #10
    u_tb = 1; t_tb = 0; g_tb = 0;        		 #10
    g_tb = 1;                  				 #10
    t_tb = 1; g_tb = 0;              			 #10
    g_tb = 1;                   			 #10
    e_tb = 1; t_tb = 0; u_tb = 0; g_tb = 0;              #10
    g_tb = 1;                    		 	 #10
    t_tb = 1; g_tb = 0;               	    		 #10
    g_tb = 1;                   		         #10
    t_tb = 0; u_tb = 1; g_tb = 0;           	         #10
    g_tb = 1;                   		         #10
    t_tb = 1; g_tb = 0;               	                 #10
    g_tb = 1; t_tb = 1; u_tb = 1; g_tb = 1;              #10

    $stop;
end
endmodule