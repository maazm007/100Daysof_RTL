// Author: Maaz Mahmood
// Create Date:    10:54:47 01/09/2023 
// Module Name:    Gray_to_Binary_Converter 

module Gray_to_Binary_Converter(B,G);
	input [3:0] G;
	output [3:0] B;
	assign B[0] = G[0] ^ G[1] ^ G[2] ^ G[3];
	assign B[1] = G[1] ^ G[2] ^ G[3];
	assign B[2] = G[2] ^ G[3];
	assign B[3] = G[3];
endmodule
