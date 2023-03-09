module FSM_Moore_TB;
	reg Din;
	reg Clock;
	reg Reset;
	wire Y;
	FSM_Moore_Detector uut (.Din(Din), .Clock(Clock), .Reset(Reset), .Y(Y));
	
	initial
	Clock = 1'b0;
	
	always
	#10 Clock = ~Clock;
	
	initial
	begin
	#20 Reset = 1;
	#10 Reset = 0; Din = 0;
	#20 Din = 1;
	#20 Din = 1;
	#20 Din = 0;
	#20 Din = 1;
	end
      
	initial
	#150 $finish;
	
endmodule

