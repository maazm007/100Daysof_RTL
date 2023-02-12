// Author: Maaz Mahmood
// Create Date:    22:35:36 02/12/2023 
// Module Name:    Signed_Subtracter 

module Signed_Subtracter(inputA, inputB, Diff, S0, S1, Reset);
	input [3:0] inputA, inputB;
	input S0, S1, Reset;
	output [5:0] Diff;
	wire [5:0] CompA, CompB, muxA, muxB;
	Twos_Complement t1(inputA, CompA, Reset);
	Twos_Complement t2(inputB, CompB, Reset);
	Five_Bit_MUX m1(muxA, inputA, CompA, S0, Reset);
	Five_Bit_MUX m2(muxB, inputB, CompB, S1, Reset);
	Six_Bit_Subtracter s1(Diff, muxA, muxB, Reset);
endmodule
