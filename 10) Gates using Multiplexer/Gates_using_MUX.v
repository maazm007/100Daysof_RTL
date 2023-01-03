// Author: Maaz Mahmood
// Create Date:    09:36:42 01/03/2023 
// Module Name:    Gates_using_MUX 

module Gates_using_MUX(A,B,AND_Out,OR_Out,NAND_Out,NOR_Out,XOR_Out,XNOR_Out);
	input A,B;
	output AND_Out,OR_Out,NAND_Out,NOR_Out,XOR_Out,XNOR_Out;
	Multiplexer_2_to_1 m1(AND_Out,1'b0,B,A);
	Multiplexer_2_to_1 m2(OR_Out,B,1'b1,A);
	Multiplexer_2_to_1 m3(NAND_Out,1'b1,~B,A);
	Multiplexer_2_to_1 m4(NOR_Out,~B,1'b0,A);
	Multiplexer_2_to_1 m5(XOR_Out,B,~B,A);
	Multiplexer_2_to_1 m6(XNOR_Out,~B,B,A);
endmodule
