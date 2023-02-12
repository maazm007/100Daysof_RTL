// Author: Maaz Mahmood
// Create Date:    23:37:04 01/05/2023 
// Module Name:    Priority_Encoder 

module Priority_Encoder(In,Enable,Out,Valid_Bit);
	input [7:0] In;
	input Enable;
	output reg [2:0] Out;
	output reg Valid_Bit;
	always @(*)
	begin
		if(Enable == 1)
		begin
		if(In == 8'b0)
			begin Out = 3'bx; Valid_Bit = 1'b0; end
		else
			begin
			casex(In)
			8'b00000001: begin Out = 3'b000; Valid_Bit = 1'b1; end
			8'b0000001x: begin Out = 3'b001; Valid_Bit = 1'b1; end
			8'b000001xx: begin Out = 3'b010; Valid_Bit = 1'b1; end
			8'b00001xxx: begin Out = 3'b011; Valid_Bit = 1'b1; end
			8'b0001xxxx: begin Out = 3'b100; Valid_Bit = 1'b1; end
			8'b001xxxxx: begin Out = 3'b101; Valid_Bit = 1'b1; end
			8'bx1xxxxxx: begin Out = 3'b110; Valid_Bit = 1'b1; end
			8'b1xxxxxxx: begin Out = 3'b111; Valid_Bit = 1'b1; end
			default: Out = 3'b000;
			endcase
			end
		end
		else
			Out = 3'b000;
	end
endmodule
