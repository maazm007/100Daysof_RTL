// Author: Maaz Mahmood
// Create Date:    19:42:59 01/12/2023 
// Module Name:    SR_Latch 

module SR_Latch(S,R,Q,Qbar,Enable,Clear);	
	input S,R,Enable,Clear;
	output reg Q,Qbar;
	always @(Enable,S,R,Clear)
	begin
	if(Clear == 1'b0) //Clear is used to hold the previous state
		begin
		Q = 1'b0;
		Qbar = 1'b1;
		end
	else
	begin
		if(Enable == 1'b1)
		begin
			if(S == 0 && R == 0)
				begin Q = Q; Qbar = ~Q; end
			else if(S == 1 && R == 0)
				begin Q = 1'b1; Qbar = ~Q; end
			else if(S == 0 && R == 1)
				begin Q = 1'b0; Qbar = ~Q; end
			else if(S == 1 && R == 1)
				begin Q = 1'b0; Qbar = 1'b0; end
			else
				begin Q = Q; Qbar = ~Q; end
		end
		else
		begin
			Q <= Q;
			Qbar <= Qbar;
		end
	end
	end
endmodule
