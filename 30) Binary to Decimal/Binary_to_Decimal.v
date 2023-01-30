// Author: Maaz Mahmood
// Create Date:    17:20:45 01/30/2023 
// Module Name:    Binary_to_Decimal 

module Binary_to_Decimal(Number,Dec);
	input [3:0] Number;
	output reg [3:0] Dec;
	integer count;
	always@(Number)
	begin
	Dec = 0;
		for(count = 0;count < 4;count = count + 1)
		begin
			Dec = Dec + Number[count]*(2**count);
		end
		count = 0;
	end
endmodule
