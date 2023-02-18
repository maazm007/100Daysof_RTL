// Author: Maaz Mahmood
// Create Date:    21:46:09 02/07/2023 
// Module Name:    PISO_Shift_Register 

module PISO_Shift_Register(Data_In, Clock, Reset, SOut, Load);
	input [3:0] Data_In;
	input Clock, Reset, Load;
	output reg SOut;
	reg [3:0] Q;
	always@(posedge Clock or negedge Reset)
	begin
		if(!Reset)
		begin
			SOut <= 1'b0;
			Q <= 4'b0;
		end
		else if(Reset)
		begin
			if(!Load) //For Load = 0, Data will be inserted
			begin
				Q[0] <= Data_In[0];
				Q[1] <= Data_In[1];
				Q[2] <= Data_In[2];
				Q[3] <= Data_In[3];
			end
			else if(Load) //For Load = 1, Data will be transmitted serially
			begin
				SOut <= Q[0];
				Q[0] <= Q[1];
				Q[1] <= Q[2];
				Q[2] <= Q[3];
			end
		end
	end
endmodule
