// Author: Maaz Mahmood
// Create Date:    23:32:32 01/16/2023 
// Module Name:    Master_Slave 

module Master_Slave(J,K,Clock,Clear,Q,Qbar);
	input J,K,Clock,Clear;
	output reg Q,Qbar;
	always @(posedge Clock,J,K)
	begin
		if(Clear == 1'b0)
		begin
			Q <= 1'b0;
			Qbar <= 1'b1;
		end
		else
		begin
			if(J == 0 && K == 0)
				begin Q <= Q; Qbar = Qbar; end
			else if(J == 0 && K == 1)
				begin Q <= 1'b0; Qbar = 1'b1; end
			else if(J == 1 && K == 0)
				begin Q <= 1'b1; Qbar = 1'b0; end
			else if(J == 1 && K == 1)
				begin Q <= ~Q; Qbar = ~Qbar; end
			else
				begin Q <= Q; Qbar <= Qbar; end
		end
	end
endmodule
