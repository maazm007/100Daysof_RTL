// Author: Maaz Mahmood
// Create Date:    19:03:44 02/05/2023 
// Module Name:    SIPO_Shift_Register 

module SIPO_Shift_Register(Sin,Pout,Clock,Clear);
	input Sin,Clock,Clear;
	output reg [3:0] Pout;
	always@(posedge Clock or negedge Clear)
	begin
		if(!Clear)
			Pout <= 4'b0;
		else if(Clear)
		begin
			Pout[3] <= Pout[2];
			Pout[2] <= Pout[1];
			Pout[1] <= Pout[0];
			Pout[0] <= Sin;
		end
	end
endmodule
