module Up_Down_Counter_TB;
	reg Clock;
	reg Clear;
	reg M;
	wire [3:0] Q;
	Up_Down_Counter uut (.Clock(Clock), .Clear(Clear), .M(M), .Q(Q));
	initial 
	Clock = 1'b0;

	always
	#5 Clock = ~Clock;
	
	initial
	$monitor("Clear = %b | Mode = %b | Q = %b | Decimal Count = %d",Clear,M,Q,Q);
   
	initial
	begin
	Clear = 0;
	#10 Clear = 1; M = 0;
	#160 M = 1;
	end
	
	initial
	#320 $finish;
endmodule

