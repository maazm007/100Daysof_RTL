//Author: Maaz Mahmood
// Create Date:    15:38:38 12/29/2022 
// Module Name:    FA_using_HA 

module FA_using_HA(A,B,Cin,Sum,Carry);
	input A,B,Cin;
	output Sum,Carry;
	wire w1,w2,w3;
	Half_Adder h1(w1,w2,A,B);
	Half_Adder h2(Sum,w3,w1,Cin);
	or (Carry,w2,w3);
endmodule
