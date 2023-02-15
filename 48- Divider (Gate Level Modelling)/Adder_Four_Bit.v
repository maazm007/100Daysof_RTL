module Adder_Four_Bit(A,B,Sum,Reset);
	input [3:0] A,B;
	input Reset;
	output [4:0] Sum;
	wire w1,w2,w3;
	Half_Adder f1(Sum[0],w1,A[0],B[0],Reset);
	Full_Adder f2(Sum[1],w2,A[1],B[1],w1,Reset);
	Full_Adder f3(Sum[2],w3,A[2],B[2],w2,Reset);
	Full_Adder f4(Sum[3],Sum[4],A[3],B[3],w3,Reset);
endmodule
