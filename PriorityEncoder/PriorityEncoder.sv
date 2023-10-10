module priorityEncoder(input logic [3:0] x,
	output logic [3:0] y);

	always_comb
	
		casez(x)
		// ? denotes X (dont care values) in casez(x)
		// outputs are in the form of one-hot encoding
			4'b1???: y = 4'b1000; //y3 = 1
			4'b01??: y = 4'b0100; //y2 = 1
			4'b001?: y = 4'b0010; //y1 = 1
			4'b0001: y = 4'b0001; //y0 = 1
			4'b0000: y = 4'b0000; 
			default: y; 
		endcase
endmodule
