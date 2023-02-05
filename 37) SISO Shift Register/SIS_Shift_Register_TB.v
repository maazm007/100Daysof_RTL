module SISO_Shift_Register_TB;
	reg Sin;
	reg Clock;
	reg Reset;
	wire Sout;
	integer count;
	SISO_Shift_Register uut (.Sin(Sin), .Sout(Sout), .Clock(Clock), .Reset(Reset));
	
	initial
	$monitor("Clock Pulse = %d | Reset = %b | Sin = %b | SOut = %b",count,Reset,Sin,Sout);
	
	initial
	begin
	Clock = 1'b0;
	count = 0;
	end
	
	always
	#10 Clock = ~Clock;
	
	always@(posedge Clock)
	count = count + 1;
	
	
	initial
	begin
	Reset = 1'b0;
	#10 Reset = 1'b1; Sin = 1'b1;
	#20 Sin = 1'b1;
	#20 Sin = 1'b0;
	#20 Sin = 1'b1;
	end
	
	initial
	#200 $finish;
      
endmodule

