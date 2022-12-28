// Author: Maaz Mahmood 
// Create Date:    13:28:14 12/28/2022 
// Module Name:    Ripple_Carry_Adder 

module Ripple_Carry_Adder(A,B,Cin,Sum,Carry_Out);
	input [3:0] A,B;
	input Cin;
	output [3:0] Sum;
	output Carry_Out;
	wire w1,w2,w3;
	Full_Adder f1(A[0],B[0],Cin,Sum[0],w1);
	Full_Adder f2(A[1],B[1],w1,Sum[1],w2);
	Full_Adder f3(A[2],B[2],w2,Sum[2],w3);
	Full_Adder f4(A[3],B[3],w3,Sum[3],Carry_Out);
endmodule
