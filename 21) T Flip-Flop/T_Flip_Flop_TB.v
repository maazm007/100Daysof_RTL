module T_Flip_Flop_TB;
	reg T;
	reg Clear;
	reg Clock;
	wire Q;
	wire Qbar;
	T_Flip_Flop uut (.T(T), .Clear(Clear), .Clock(Clock), .Q(Q), .Qbar(Qbar));

	initial
		$monitor("Clear = %b | T = %b | Q = %b | Qbar = %b",Clear,T,Q,Qbar);
		
	initial 
		Clock = 1'b0;
	
	always
		#50 Clock = ~Clock;
		
	initial
	begin
		Clear = 0;
		#100 Clear = 1; T = 0;
		#100 T = 1;
   end
	
	initial
		#300 $finish;
endmodule

