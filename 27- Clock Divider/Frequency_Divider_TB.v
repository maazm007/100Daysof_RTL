module Frequency_Divider_TB;
	reg Clock;
	reg Clear;
	wire [3:0] Freq_Div;
	Frequency_Divider uut (.Clock(Clock), .Freq_Div(Freq_Div), .Clear(Clear));

	initial 
	Clock = 0;
	
	always 
	#10 Clock = ~Clock;
	
	initial
	begin
		#15 Clear = 0;
		#30 Clear = 1;
   end
endmodule

