// Author: Maaz Mahmood
// Create Date:    18:48:15 02/01/2023 
// Module Name:    Excess3_to_Binary 

module Excess3_to_Binary(Ex3,Binary);
	input [7:0] Ex3;
	output [5:0] Binary;
	wire [7:0] temp;
	assign temp[3:0] = Ex3[3:0] - 4'b0011;
	assign temp[7:4] = Ex3[7:4] - 4'b0011;
	BCD_to_Binary b1(temp,Binary);
endmodule
