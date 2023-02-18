module Ring_Counter_TB;
	reg Clock;
	reg ORI;
	wire [3:0] Q;
	Ring_Counter uut (.Clock(Clock), .ORI(ORI), .Q(Q));
	initial 
	Clock = 1'b0;
	
	always
	#10 Clock = ~Clock;
	
	initial
	$monitor($time," ORI = %b | Q = %b",ORI,Q);
	
	initial
	begin
		ORI = 0;
		#20 ORI = 1;
	end
	
	initial
	#100 $finish;
      
endmodule

