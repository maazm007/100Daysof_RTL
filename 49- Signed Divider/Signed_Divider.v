// Author: Maaz Mahmodo
// Create Date:    23:37:19 02/14/2023 
// Module Name:    Signed_Divider 

module Signed_Divider(Dividend,Divisor,Quotient,Remainder,S0,S1,Reset);
	input [3:0] Dividend, Divisor;
	output [3:0] Remainder;
	output [5:0] Quotient;
	input S1, S0, Reset;
	wire [3:0] tempRem, tempQnt, tempRem_2, tempRem_3, tempSum;
	wire [5:0] tempQnt_1, tempQnt_2, tempSum_1, tempQnt_3;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	Four_Bit_Divider f1(Dividend,Divisor,Reset,tempQnt,tempRem);
	or o1(w1,tempRem[0],tempRem[1],tempRem[2],tempRem[3]);
	Four_Bit_Subtracter f2(Divisor,tempRem,tempRem_2,Reset);
	MUX_Four_Bit f3(tempRem,tempRem_2,w1,tempRem_3,Reset);
	MUX_Four_Bit f4(tempRem,tempRem_3,{S0^S1},Remainder,Reset);
	Twos_Complement f5(tempQnt,tempQnt_1,Reset);
	Adder_Four_Bit_Out f6(tempQnt,4'b0001,tempSum, Reset);
	Twos_Complement f7(tempSum, tempSum_1, Reset);
	MUX_Six_Bit f8(tempQnt_1,tempSum_1,w1,tempQnt_3,Reset);
	MUX_Six_Four_Bit f9(tempQnt,tempQnt_3,S0^S1,Quotient,Reset);
endmodule
