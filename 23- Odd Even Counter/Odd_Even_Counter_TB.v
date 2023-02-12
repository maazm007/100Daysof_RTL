module Odd_Even_Counter_TB;
	reg Clock;
	reg Clear;
	reg M;
	wire [3:0] Q;
	Odd_Even_Counter uut (.Q(Q), .Clock(Clock), .Clear(Clear), .M(M));
	initial 
		$monitor("Clear = %b | Mode = %b | Q = %b | Decimal Count = %d",Clear,M,Q,Q);
		
	initial
		Clock = 1'b0;
	
	always
		#10 Clock = ~Clock;
		
	initial
	begin
		Clear = 0;
		#50 Clear = 1; M = 0;
		#180 M = 1;
	end
	
	initial
		#400 $finish;
      
endmodule

