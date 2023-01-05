// Author: Maaz Mahmood 
// Create Date:    20:16:17 01/04/2023 
// Module Name:    Encoder_8_to_3 

module Encoder_8_to_3(Out,In,Enable);
	input [7:0] In;
	input Enable;
	output reg [2:0] Out;
	always @(Enable,In)
	begin
		if(Enable == 1'b1)
		begin
			Out = 3'b000;
			case(In)
			8'b00000001: Out = 3'b000;
			8'b00000010: Out = 3'b001;
			8'b00000100: Out = 3'b010;
			8'b00001000: Out = 3'b011;
			8'b00010000: Out = 3'b100;
			8'b00100000: Out = 3'b101;
			8'b01000000: Out = 3'b110;
			8'b10000000: Out = 3'b111;
			default: Out = 3'b000;
			endcase
	   end
		else
			Out = 3'b000;
	end
endmodule
