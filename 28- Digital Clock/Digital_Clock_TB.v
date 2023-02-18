module Digital_Clock_TB;
	reg Clock;
	reg Reset;
	wire [4:0] Hour;
	wire [5:0] Min;
	wire [5:0] Sec;
	Digital_Clock uut (.Hour(Hour), .Min(Min), .Sec(Sec), .Clock(Clock), .Reset(Reset));

	initial
	$monitor("Reset = %b | Time = %d:%d:%d",Reset,Hour,Min,Sec);
	
	initial 
	Clock = 1'b0;
	
	always
	#5 Clock = ~Clock;
	
	initial
	begin
	#15 Reset = 0;
	#25 Reset = 1;
	end
      
endmodule

