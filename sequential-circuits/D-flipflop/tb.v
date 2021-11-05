`timescale 1ns/1ps

module dff_tb();
			reg D;		// input D
			reg clk;		// input clk
			reg rstn;	// reset (active low)
			wire Q;		// output
			wire Qb;		// complementary output
    
	// clock generation block
	initial begin
		clk = 0;
		forever begin
			#10 clk = ~clk;
		end // forever
	end	

	// Test block
	initial begin
        rstn = 1;
		
		#40;
        rstn = 0;
		D = 0;
		#20;
		D = 1;
        #20;
		D = 0;
        #20;
		D = 1;
        #20;
		D = 0;
	end // initial

	// monitor results
	initial begin
		$monitor("@:%0t :: rstn:%0b, D:%0b, Q:%0b, Qb:%0b", $time, rstn, D, Q, Qb);
	end	

	// finish simulation
	initial begin
		# 1000;
		$finish();
	end // initial
    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(1);
    end
    // Instantiation of DUT
    dff D_DUT(
    			.D(D),
    			.clk(clk),
    			.rstn(rstn),
    			.Q(Q),
    			.Qb(Qb)
    	);
endmodule 