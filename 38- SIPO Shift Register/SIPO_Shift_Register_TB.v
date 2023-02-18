module SIPO_Shift_Register_TB;
	reg Sin;
	reg Clock;
	reg Clear;
	wire [3:0] Pout;
	integer count;
	SIPO_Shift_Register uut (.Sin(Sin), .Pout(Pout), .Clock(Clock), .Clear(Clear));
	
	initial
	$monitor("Clock Pulse = %d | Reset = %b | SIn = %b | Parallel_Out = %b",count,Clear,Sin,Pout);
	
	initial
	begin
		Clock = 1'b0;
		count = 1'b0;
	end
	
	always
	#10 Clock = ~Clock;
	
	always@(posedge Clock)
	count = count + 1;
	initial 
	begin
		Clear = 0;
		#10 Clear = 1'b1; Sin = 1'b1;
		#20 Sin = 1'b1;
		#20 Sin = 1'b0;
		#20 Sin = 1'b1;
	end
	
	initial
	#90 $finish;
      
endmodule

