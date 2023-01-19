// Author: Maaz Mahmood
// Create Date:    16:45:53 01/18/2023 
// Module Name:    T_Flip_Flop 

module T_Flip_Flop(T,Clear,Clock,Q,Qbar);
	input T,Clear,Clock;
	output reg Q,Qbar;
	always@(posedge Clock,T)
	begin
		if(Clear == 1'b0)
			begin Q <= 1'b0; Qbar <= 1'b1; end
		else
		begin
			if(T == 1'b1)
				begin Q <= ~Q; Qbar <= ~Qbar; end
			else
				begin Q <= Q; Qbar <= Qbar; end
		end
	end
endmodule
