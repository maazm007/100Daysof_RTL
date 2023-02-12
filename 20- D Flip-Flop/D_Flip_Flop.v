// Author: Maaz Mahmood
// Create Date:    23:31:23 01/17/2023 
// Module Name:    D_Flip_Flop 

module D_Flip_Flop(D,Clock,Clear,Q,Qbar);
	input D,Clock,Clear;
	output reg Q,Qbar;
	always @(posedge Clock,D)
	begin
		if(Clear == 0)
		begin
			Q <= 1'b0;
			Qbar <= 1'b1;
		end
		else
			Q <= D;
		Qbar = ~Q;
	end
endmodule
