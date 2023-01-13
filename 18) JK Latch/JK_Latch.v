// Author: Maaz Mahmood
// Create Date:    14:48:43 01/13/2023 
// Module Name:    JK_Latch 

module JK_Latch(J,K,Clear,Enable,Q,Qbar);
	input J,K,Clear,Enable;
	output reg Q, Qbar;
		always @(Enable,J,K,Clear)
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
			if(J == 0 && K == 0)
				begin Q = Q; Qbar = ~Q; end
			else if(J == 1 && K == 0)
				begin Q = 1'b1; Qbar = ~Q; end
			else if(J == 0 && K == 1)
				begin Q = 1'b0; Qbar = ~Q; end
			else if(J == 1 && K == 1)
				begin Q = 1'bx; Qbar = 1'bx; end
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
