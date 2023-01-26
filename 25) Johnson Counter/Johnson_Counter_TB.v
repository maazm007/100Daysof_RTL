module Johnson_Counter_TB;
	reg Clock;
	reg Clear;
	wire [3:0] Q;
	Johnson_Counter uut (.Clock(Clock), .Clear(Clear), .Q(Q));
	initial 
	Clock = 1'b0;
	
	always
	#10 Clock = ~Clock;
	
	initial
	begin
	Clear = 0;
	#20 Clear = 1;
	end
	
	initial
	$monitor($time,"\tClear = %b | Q = %b",Clear,Q);
	
	initial
	#190 $finish;
      
endmodule

