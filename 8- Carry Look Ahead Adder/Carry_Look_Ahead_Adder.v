// Author: Maaz Mahmood
// Create Date:    17:21:15 12/31/2022 
// Module Name:    Carry_Look_Ahead_Adder 

module Carry_Look_Ahead_Adder(A,B,Cin,Sum,Carry);
	input [3:0] A,B;
	input Cin;
	output [3:0] Sum;
	output Carry;
	wire C1,C2,C3,C0,G0,G1,G2,G3,P0,P1,P2,P3;
	//Carry Propagator
	assign P0 = A[0] ^ B[0];
	assign P1 = A[1] ^ B[1];
	assign P2 = A[2] ^ B[2];
	assign P3 = A[3] ^ B[3];
	//Carry Generator
	assign G0 = A[0] & B[0];
	assign G1 = A[1] & B[1];
	assign G2 = A[2] & B[2];
	assign G3 = A[3] & B[3];
	assign C1 = (P0 & C0) | G0;
	assign C2 = (P1 & P0 & C0) | (P1 & G0) | G1;
	assign C3 = (P0 & P1 & P2 & C0) | (P2 & P1 & G0) | (P2 & G1) | G2;
	assign Carry = (P3 & P2 & P1 & P0 & C0) | (P3 & P2 & P1 & G0) | (P3 & P2 & G1) | (P3 & G2) | G3;
	Full_Adder f1(A[0],B[0],Cin,Sum[0],C0);
	Full_Adder f2(A[1],B[1],C1,Sum[1]);
	Full_Adder f3(A[2],B[2],C2,Sum[2]);
	Full_Adder f4(A[3],B[3],C3,Sum[3]);
endmodule
