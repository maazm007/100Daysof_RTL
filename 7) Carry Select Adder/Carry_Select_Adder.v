// Author: Maaz Mahmood
// Create Date:    22:14:43 12/30/2022 
// Module Name:    Carry_Select_Adder 

module Carry_Select_Adder(A,B,Cin,Sum,Carry);
	input [3:0] A,B;
	input Cin;
	output [3:0] Sum;
	wire [3:0] S1,S2;
	output Carry;
	wire w1,w2,w3,w4,w5,w6,w7,w8;
	//For Carry In as 0
	Full_Adder f1(A[0],B[0],1'b0,S1[0],w1);
	Full_Adder f2(A[1],B[1],w1,S1[1],w2);
	Full_Adder f3(A[2],B[2],w2,S1[2],w3);
	Full_Adder f4(A[3],B[3],w3,S1[3],w4);
	//For Carry In as 1
	Full_Adder f5(A[0],B[0],1'b1,S2[0],w5);
	Full_Adder f6(A[1],B[1],w5,S2[1],w6);
	Full_Adder f7(A[2],B[2],w6,S2[2],w7);
	Full_Adder f8(A[3],B[3],w7,S2[3],w8);
	//Taking Sum
	assign Sum[0] = Cin?S2[0]:S1[0];
	assign Sum[1] = Cin?S2[1]:S1[1];
	assign Sum[2] = Cin?S2[2]:S1[2];
	assign Sum[3] = Cin?S2[3]:S1[3];
	assign Carry = Cin?w8:w4;
endmodule
