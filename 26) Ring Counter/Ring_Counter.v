// Author: Maaz Mahmood
// Create Date:    21:20:57 01/24/2023 
// Module Name:    Ring_Counter 

module Ring_Counter(Clock,ORI,Q);
	input Clock,ORI; //ORI means Over Ridden Input
	output reg [3:0] Q;
	always @(posedge Clock or negedge ORI)
	begin
		if(ORI == 0)
		begin
			Q[0] <= 1'b1; //Preset
			Q[3:1] <= 1'b0;
		end
		else if(ORI == 1)
		begin
			Q[3] <= Q[2];
			Q[2] <= Q[1];
			Q[1] <= Q[0];
			Q[0] <= Q[3];
		end
	end
endmodule
