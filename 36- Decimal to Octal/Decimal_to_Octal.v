// Author: Maaz Mahmood
// Create Date:    23:17:10 02/01/2023 
// Module Name:    Decimal_to_Octal 

module Decimal_to_Octal(Dec,Octal);
	input [15:0] Dec;
	output reg [15:0] Octal;
	integer Num,Num_Oct;
	integer count = 0;
	always@(Dec)
	begin
		Num = Dec;
		Octal = 0;
		while(Num > 0)
		begin
			Octal = Octal + (10**count)*(Num % 8);
			Num = Num / 8;
			count = count + 1;
		end
		count = 0;
	end
endmodule
