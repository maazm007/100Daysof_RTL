module D_Flip_Flop_TB;
	reg D;
	reg Clock;
	reg Clear;
	wire Q;
	wire Qbar;
	D_Flip_Flop uut (.D(D), .Clock(Clock), .Clear(Clear), .Q(Q), .Qbar(Qbar));
	
	initial
		$monitor("Clear = %b | D = %b | Q = %b | Qbar = %b",Clear,D,Q,Qbar);
		
	initial 
		Clock = 1'b0;
	
	always
		#50 Clock = ~Clock;
	
	initial
		begin
		Clear = 0;
		#100 Clear = 1; D = 1;
		#100 D = 0;
		#100 D = 1;
		end
		
	initial
		#400 $finish;

endmodule

