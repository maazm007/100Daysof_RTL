// Author: Maaz Mahmood
// Create Date:   11:23:10 02/12/2023
// Design Name:   Signed_Adder

module Signed_Adder(A,B,Sum,S0,S1,Reset);
	input [3:0] A,B;
	input Reset,S0,S1;
	output [5:0] Sum;
	wire [5:0] CompA,CompB,muxA,muxB;
	Twos_Complement t1(A,CompA,Reset);
	Twos_Complement t2(B,CompB,Reset);
	Five_Bit_MUX m1(muxA,A,CompA,S0,Reset);
	Five_Bit_MUX m2(muxB,B,CompB,S1,Reset);
	Four_Bit_Adder f1(muxA,muxB,Sum,Reset);
endmodule

//Due to after modification, the file name was unable to
//change, hence here Four_Bit_Adder is actually of 6 bits