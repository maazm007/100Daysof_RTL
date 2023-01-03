module Multiplexer_2_to_1(MUX_Out,A,B,Sel);
	input A,B,Sel;
	output MUX_Out;
	assign MUX_Out = Sel?B:A;
endmodule
