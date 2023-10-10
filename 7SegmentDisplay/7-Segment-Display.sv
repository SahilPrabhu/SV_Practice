module 7segdisplay(input logic [3:0] x, 
	output logic [6:0] y);

	always_comb
		case(x)
			4'b0000: d = 7'b111_1110; //0
			4'b0001: d = 7'b011_0000; //1
			4'b0010: d = 7'b110_1101; //2
			4'b0011: d = 7'b111_1001; //3
			4'b0100: d = 7'b011_0011; //4
		        4'b0101: d = 7'b101_1011; //5
			4'b0110: d = 7'b101_1111; //6
			4'b0111: d = 7'b111_0000; //7
			4'b1000: d = 7'b111_1111; //8
			4'b1001: d = 7'b111_1011; //9
			default: d = 7'b000_0000; //invalid-case
		endcase
endmodule
