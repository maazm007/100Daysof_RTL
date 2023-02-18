// Author: Maaz Mahmood
// Create Date:    21:30:03 01/29/2023 
// Module Name:    Parity_Generator 

module Parity_Generator(A,B,C,Even_Parity,Odd_Parity);
	input A,B,C;
	output Even_Parity,Odd_Parity;
	wire w1;
	xor x1(Even_Parity,A,B,C);
	xnor x2(w1,B,C);
	xor x3(Odd_Parity,w1,A);
endmodule
