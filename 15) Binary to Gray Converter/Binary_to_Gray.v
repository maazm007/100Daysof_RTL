// Author: Maaz Mahmood
// Create Date:    15:02:40 01/08/2023 
// Module Name:    Binary_to_Gray 

module Binary_to_Gray(B,G);
	input [3:0] B;
	output [3:0] G;
	wire w1,w2,w3,w4;
	not n1(w1,B[0]);
	not n2(w2,B[1]);
	not n3(w3,B[2]);
	not n4(w4,B[3]);
	assign G[0] = (w2 & B[0]) | (B[1] & w1);
	assign G[1] = B[1] ^ B[2];
	assign G[2] = B[2] ^ B[3];
	assign G[3] = B[3];
endmodule
