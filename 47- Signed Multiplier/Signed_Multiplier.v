// Author: Maaz Mahmood
// Create Date:    11:47:01 02/13/2023 
// Module Name:    Signed_Multiplier 

module Signed_Multiplier(inputA,inputB,S0,S1,Product,Reset);
	input [3:0] inputA, inputB;
	input S0, S1, Reset;
	output [8:0] Product;
	wire [8:0] CompMul, UnsignedMul;
	wire [7:0] Mul;
	Multiplier_Four_Bits f1(inputA, inputB, Mul, Reset);
	assign UnsignedMul = {1'b0,Mul};
	Twos_Complement_Nine_Bit t1(UnsignedMul, CompMul, Reset);
	Nine_Bit_MUX n1(Product, UnsignedMul, CompMul, {S0^S1}, Reset); 
endmodule
