// Author: Maaz Mahmood
// Create Date:    22:38:45 01/03/2023 
// Module Name:    Decoder_3_to_8 

module Decoder_3_to_8(A,B,C,Enable,Decode_Out);
	input A,B,C,Enable;
	output reg [7:0] Decode_Out;
	always @(A,B,C,Enable)
	begin
		if(Enable)
		begin
			Decode_Out = 8'b0;
			case({A,B,C})
				3'b000: Decode_Out[0] = 1'b1;
				3'b001: Decode_Out[1] = 1'b1;
				3'b010: Decode_Out[2] = 1'b1;
				3'b011: Decode_Out[3] = 1'b1;
				3'b100: Decode_Out[4] = 1'b1;
				3'b101: Decode_Out[5] = 1'b1;
				3'b110: Decode_Out[6] = 1'b1;
				3'b111: Decode_Out[7] = 1'b1;
			endcase
		end
		else
			Decode_Out = 8'b0;
	end
endmodule
