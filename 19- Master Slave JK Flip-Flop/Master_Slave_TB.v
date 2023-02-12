module Master_Slave_TB;
	reg J;
	reg K;
	reg Clock;
	reg Clear;
	wire Q;
	wire Qbar;
	Master_Slave uut (.J(J), .K(K), .Clock(Clock), .Clear(Clear), .Q(Q), .Qbar(Qbar));
	initial
		$monitor("Clear = %b | J = %b | K = %b | Q = %b | Qbar = %b",Clear,J,K,Q,Qbar);
	
	initial 
		Clock = 1'b0;
	
	always
		#10 Clock = ~Clock;
	
	initial
		begin
		Clear = 0;
		#100 Clear = 1; J = 0; K = 0;
		#100 J = 1; K = 0;
		#100 J = 0; K = 1;
		#100 J = 1; K = 1;
		end
	
	initial
		#450 $finish;
endmodule

