// Author: Maaz Mahmood
// Create Date:    18:51:26 02/09/2023 
// Module Name:    PWM 

module PWM(Clock,PWM_Out10,PWM_Out20,PWM_Out40,PWM_Out50,PWM_Out70);
	input Clock;
	output PWM_Out10,PWM_Out20,PWM_Out40,PWM_Out50,PWM_Out70;
	reg [7:0] Count = 8'b0;
	always@(posedge Clock)
	begin
		if(Count < 100)
			Count <= Count + 8'b1;
		else
			Count <= 8'b0;
	end
	assign PWM_Out10 = (Count < 10) ? 1'b1 : 1'b0;
	assign PWM_Out20 = (Count < 20) ? 1'b1 : 1'b0;
	assign PWM_Out40 = (Count < 40) ? 1'b1 : 1'b0;
	assign PWM_Out50 = (Count < 50) ? 1'b1 : 1'b0;
	assign PWM_Out70 = (Count < 70) ? 1'b1 : 1'b0;
endmodule
