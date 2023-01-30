// Author: Maaz Mahmood
// Create Date:    17:50:59 01/30/2023 
// Module Name:    Binary_to_BCD 

module Binary_to_BCD(Number,BCD);
	input [5:0] Number;
	output reg [7:0] BCD;
	always@(Number)
	begin
		BCD[3:0] = (Number % 10);
		BCD[7:4] = (Number / 10)%10;
	end
endmodule
