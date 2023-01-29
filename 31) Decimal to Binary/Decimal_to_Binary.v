// Author: Maaz Mahmood
// Create Date:    23:00:51 01/29/2023 
// Module Name:    Decimal_to_Binary 

module Decimal_to_Binary(Number,Bin);
	input [3:0] Number;
	output reg [3:0] Bin;
	integer num;
	integer count = 0;
	always@(Number)
	begin
	num = Number;
	Bin = 0;
		while(num > 0)
		begin
			if(num % 2 == 1)
				Bin[count] = 1'b1;
			else
				Bin[count] = 1'b0;
			num = num / 2;
			count = count + 1;
		end
		count = 0;
	end
endmodule
