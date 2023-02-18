// Author: Maaz Mahmood
// Create Date:    22:58:28 01/26/2023 
// Module Name:    Frequency_Divider 

module Frequency_Divider(Clock,Freq_Div,Clear);
	input Clock,Clear;
	output reg [3:0] Freq_Div;
	reg [3:0] Count;
	always @(posedge Clock or negedge Clear)
	begin
	if(Clear == 0)
	begin
		Freq_Div <= 4'b0;
		Count <= 4'b0;
	end
	else if(Clear == 1)
	begin
		Freq_Div[0] <= Count[0];
		Freq_Div[1] <= Count[1];
		Freq_Div[2] <= Count[2];
		Freq_Div[3] <= Count[3];
		Count <= Count + 4'b1;
	end
	end
endmodule
