// Author: Maaz Mahmood
// Create Date:    00:12:09 02/06/2023 
// Module Name:    PIPO_Shift_Register 

module PIPO_Shift_Register(Data_In,Clock,Reset,Q);
	input [3:0] Data_In;
	input Reset, Clock;
	output reg [3:0] Q;
	always@(posedge Clock or negedge Reset)
	begin
		if(!Reset)
			Q <= 4'b0;
		else if(Reset)
		begin
			Q[0] <= Data_In[0];
			Q[1] <= Data_In[1];
			Q[2] <= Data_In[2];
			Q[3] <= Data_In[3];
		end
	end
endmodule
