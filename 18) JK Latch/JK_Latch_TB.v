module JK_Latch_TB;
	reg J;
	reg K;
	reg Clear;
	reg Enable;
	wire Q;
	wire Qbar;
	JK_Latch uut (.J(J), .K(K), .Clear(Clear), .Enable(Enable), .Q(Q), .Qbar(Qbar));

	initial
		$monitor("Clear = %b | Enable = %b | J = %b | K = %b | Q = %b | Qbar = %b",Clear,Enable,J,K,Q,Qbar);
	initial 
	begin
		Clear = 0;
		#10 Clear = 1; Enable = 0;
		#10 J = 0; K = 0;
		#10 J = 1; K = 0;
		#10 J = 0; K = 1;
		#10 J = 1; K = 1;
		#10 Enable = 1; J = 0; K = 0;
		#10 J = 1; K = 0;
		#10 J = 0; K = 1;
		#10 J = 1; K = 1;
	end
	
	initial
		#100 $finish;
      
endmodule

