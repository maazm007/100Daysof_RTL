// Author: Maaz Mahmood
// Create Date:    21:25:31 02/04/2023 
// Module Name:    SISO_Shift_Register 

module SISO_Shift_Register(Sin,Sout,Clock,Reset);
	input Sin,Clock,Reset;
	output reg Sout;
	reg [2:0] Q;
	always@(posedge Clock or negedge Reset)
	begin
		if(!Reset)
		begin
			Sout <= 1'b0;
			Q <= 3'b0;
		end
		else if(Reset)
		begin
			Sout <= Q[0];
			Q[0] <= Q[1];
			Q[1] <= Q[2];
			Q[2] <= Sin;
		end
	end
endmodule
