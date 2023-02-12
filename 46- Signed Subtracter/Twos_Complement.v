module Twos_Complement(A,Complement,Reset);
	input [3:0] A;
	input Reset;
	output [5:0] Complement;
	wire w1,w2,w3,w4,w5;
	Half_Adder h1(Complement[0],w1,~A[0],1'b1,Reset);
	Half_Adder h2(Complement[1],w2,~A[1],w1,Reset);
	Half_Adder h3(Complement[2],w3,~A[2],w2,Reset);
	Half_Adder h4(Complement[3],w4,~A[3],w3,Reset);
	Half_Adder h5(Complement[4],w5,1'b1,w4,Reset);
	Half_Adder h6(Complement[5],,1'b1,w5,Reset);
endmodule
