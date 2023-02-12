module Six_Bit_Subtracter(Sub,A,B,Reset);
	input [5:0] A,B;
	input Reset;
	output [5:0] Sub;
	wire w1,w2,w3,w4,w5,w6;
	Half_Subtracter h1(Sub[0],w1,A[0],B[0],Reset);
	Full_Subtracter s1(Sub[1],w2,A[1],B[1],w1,Reset);
	Full_Subtracter s2(Sub[2],w3,A[2],B[2],w2,Reset);
	Full_Subtracter s3(Sub[3],w4,A[3],B[3],w3,Reset);
	Full_Subtracter s4(Sub[4],w5,A[4],B[4],w4,Reset);
	Full_Subtracter s5(Sub[5],,A[5],B[5],w5,Reset);
endmodule
