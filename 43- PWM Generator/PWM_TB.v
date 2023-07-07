module PWM_TB;
	reg Clock;
	wire PWM_Out10;
	wire PWM_Out20;
	wire PWM_Out40;
	wire PWM_Out50;
	wire PWM_Out70;
	PWM uut (.Clock(Clock), .PWM_Out10(PWM_Out10), .PWM_Out20(PWM_Out20), .PWM_Out40(PWM_Out40), .PWM_Out50(PWM_Out50), .PWM_Out70(PWM_Out70));

	initial
	Clock = 1'b0;
	
	always
	#5  Clock = ~Clock;
      
endmodule

