// Author: Maaz Mahmood
// Create Date:    21:54:22 01/18/2023 
// Module Name:    Four_Bit_Up_Counter 

module Four_Bit_Up_Counter(In,Clear,Clock,Q);
	input In,Clear,Clock;
	output reg [3:0] Q;
	always @(posedge Clock)
	begin
		if(Clear == 1'b0)
			Q <= 4'b0;
		else
		begin
			if(In == 1'b0)
				Q <= Q;
			else
				Q <= Q + 4'b0001;
		end
	end
endmodule
