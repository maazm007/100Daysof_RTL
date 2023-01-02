// Author: Maaz Mahmood
// Create Date:    21:53:58 01/01/2023 
// Module Name:    Multiplexer_4_to_1 

module Multiplexer_4_to_1(I0,I1,I2,I3,Sel0,Sel1,MUX_Out);
	input I0,I1,I2,I3,Sel0,Sel1;
	output reg MUX_Out;
	always@(I0,I1,I2,I3,Sel0,Sel1)
	begin
	case({Sel1,Sel0})
		2'b00: MUX_Out = I0;
		2'b01: MUX_Out = I1;
		2'b10: MUX_Out = I2;
		2'b11: MUX_Out = I3;
	endcase
	end
endmodule
