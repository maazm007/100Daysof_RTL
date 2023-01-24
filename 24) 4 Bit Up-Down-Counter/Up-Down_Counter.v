// Author: Maaz Mahmood
// Create Date:    23:35:11 01/23/2023 
// Module Name:    Up-Down_Counter 

module Up_Down_Counter(Clock,Clear,M,Q);
	input Clock,Clear,M;
	output reg [3:0] Q;
	always @(posedge Clock)
	begin
		if(Clear == 0)
			Q <= 4'b0;
		else
		begin
			if(M == 0)
				Q <= Q + 4'b1;
			else if(M == 1'b1)
				Q <= Q - 4'b1;
		end
	end
endmodule
