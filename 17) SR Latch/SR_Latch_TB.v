module SR_Latch_TB;
	reg S;
	reg R;
	reg Enable;
	reg Clear;
	wire Q;
	wire Qbar;
	SR_Latch uut (.S(S), .R(R), .Q(Q), .Qbar(Qbar), .Enable(Enable), .Clear(Clear));

	initial
		$monitor("Clear = %b | Enable = %b | S = %b | R = %b | Q = %b | Qbar = %b",Clear,Enable,S,R,Q,Qbar);
	initial 
	begin
		Clear = 0;
		#10 Clear = 1; Enable = 0;
		#10 S = 0; R = 0;
		#10 S = 1; R = 0;
		#10 S = 0; R = 1;
		#10 S = 1; R = 1;
		#10 Enable = 1; S = 0; R = 0;
		#10 S = 1; R = 0;
		#10 S = 0; R = 1;
		#10 S = 1; R = 1;
	end
	
	initial
		#100 $finish;
      
endmodule

