// Author: Maaz Mahmood
// Create Date:    19:13:01 01/25/2023 
// Module Name:    Johnson_Counter 

module Johnson_Counter(Clock,Clear,Q);
	input Clock,Clear;
	output reg [3:0] Q;
	always @(posedge Clock or negedge Clear)
	begin
		if(Clear == 0)
			Q <= 4'b0;
		else if(Clear == 1'b1)
		begin
			Q[3] <= Q[2];
			Q[2] <= Q[1];
			Q[1] <= Q[0];
			Q[0] <= ~Q[3];
		end
	end
endmodule
