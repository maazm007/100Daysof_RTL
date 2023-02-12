module Four_Bit_Up_Counter_TB;
	reg In;
	reg Clear;
	reg Clock;
	wire [3:0] Q;
	Four_Bit_Up_Counter uut (.In(In), .Clear(Clear), .Clock(Clock), .Q(Q));

	initial 
		$monitor("Clear = %b | In = %b | Q = %b | Decimal = %d",Clear,In,Q,Q);
		
	initial
		Clock = 1'b0;
		
	always 
		#5 Clock = ~Clock;
	
	initial
	begin
		Clear = 0;
		#10 Clear = 1; In = 1;
		#100 In = 0;
		#110 In = 1;
	end
   
	initial
		#300 $finish;
		
endmodule

