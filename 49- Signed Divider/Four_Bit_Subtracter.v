module Four_Bit_Subtracter(A,B,Sub,Reset);
	input [3:0] A,B;
	input Reset;
	output [3:0] Sub;
	wire w1,w2,w3,w4;
	Half_Subtracter h1(Sub[0],w1,A[0],B[0],Reset);
	Full_Subtracter s1(Sub[1],w2,A[1],B[1],w1,Reset);
	Full_Subtracter s2(Sub[2],w3,A[2],B[2],w2,Reset);
	Full_Subtracter s3(Sub[3],w4,A[3],B[3],w3,Reset);
endmodule
