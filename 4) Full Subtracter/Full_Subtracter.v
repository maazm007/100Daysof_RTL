// Author: Maaz Mahmood
// Create Date:    14:26:16 12/26/2022 
// Module Name:    Full_Subtracter 

module Full_Subtracter(A,B,Bin,Diff,Borrow);
	input A,B,Bin;
	output Diff,Borrow;
	wire w1,w2,w3;
	Half_Subtracter h1(A,B,w1,w2);
	Half_Subtracter h2(w1,Bin,Diff,w3);
	or (Borrow,w2,w3);
endmodule
