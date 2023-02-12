// Author: Maaz Mahmood
// Create Date:    11:11:13 01/22/2023 
// Module Name:    Odd_Even_Counter 

module Odd_Even_Counter(Q,Clock,Clear,M);
	input Clock,Clear,M;
	output reg [3:0] Q;
	reg [2:0] count;
	always @(posedge Clock)
	begin
		if(Clear == 0)
		begin
			count <= 3'b0;
			Q <= 4'b0;
		end
		else
		begin
			if(M == 0) //even counter
				Q <= Q + 4'b0010;
			else if(M == 1) // odd counter	
			begin
				Q <= {count,1'b1};
				count <= count + 1;
			end
		end
	end
endmodule
