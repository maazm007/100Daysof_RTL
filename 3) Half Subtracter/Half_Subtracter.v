// Author: Maaz Mahmood
// Create Date:   10:05:20 12/26/2022
// Design Name:   Half_Subtracter

module Half_Subtracter(A,B,Diff,Borr);
	input A,B;
	output Diff,Borr;
	assign Diff = A ^ B;
	assign Borr = ((!A) && B);
endmodule
