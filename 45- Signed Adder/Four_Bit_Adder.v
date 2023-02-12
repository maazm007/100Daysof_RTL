module Four_Bit_Adder(A,B,Sum,Reset);
	input [5:0] A,B;
	input Reset;
	output [5:0] Sum;
	wire w1,w2,w3,w4,w5;
	Half_Adder h1(Sum[0],w1,A[0],B[0],Reset);
	Full_Adder f1(Sum[1],w2,A[1],B[1],w1,Reset);
	Full_Adder f2(Sum[2],w3,A[2],B[2],w2,Reset);
	Full_Adder f3(Sum[3],w4,A[3],B[3],w3,Reset);
	Full_Adder f4(Sum[4],w5,A[4],B[4],w4,Reset);
	Full_Adder f5(Sum[5],,A[5],B[5],w5,Reset);
endmodule
