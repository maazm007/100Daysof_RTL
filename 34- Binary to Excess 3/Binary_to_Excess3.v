// Author: Maaz Mahmood
// Create Date:    09:17:41 02/01/2023 
// Module Name:    Binary_to_Excess3 

module Binary_to_Excess3(Binary,Ex3);
	input [5:0] Binary;
	output [7:0] Ex3;
	wire [7:0] Bin_Num;
	Binary_to_BCD b1(Binary,Bin_Num);
	assign Ex3[3:0] = Bin_Num[3:0] + 4'b0011;
	assign Ex3[7:4] = Bin_Num[7:4] + 4'b0011;
endmodule
