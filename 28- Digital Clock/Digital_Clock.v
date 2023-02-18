// Author: Maaz Mahmood
// Create Date:    18:07:15 01/28/2023 
// Module Name:    Digital_Clock 

module Digital_Clock(Hour,Min,Sec,Clock,Reset);
	input Clock,Reset;
	output reg [5:0] Sec,Min;
	output reg [4:0] Hour;
	localparam SIXTY = 6'b111100,MAX = 5'b11000 ;
	always @(posedge Clock)
	begin
		if(!Reset)	
		begin
			Sec <= 6'b0;
			Min <= 6'b0;
			Hour <= 5'b0;
		end
		else if(Reset)
		begin
		if(Min == SIXTY)
		begin
			Hour <= Hour + 5'b1;
			Min <= 6'b0;
			Sec <= Sec + 6'b1;
		end
		else if(Sec == SIXTY)
		begin
			Sec <= 6'b0;
			Min <= Min + 6'b1;
		end
		else if(Hour == MAX)
		begin	
			Hour <= 5'b0;
			Sec <= 6'b0;
			Min <= 6'b0;
		end
		else
			Sec <= Sec + 6'b1;
	end
	end
endmodule
