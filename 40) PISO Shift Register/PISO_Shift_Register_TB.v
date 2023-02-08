module PISO_Shift_Register_TB;
	reg [3:0] Data_In;
	reg Clock;
	reg Reset;
	reg Load;
	wire SOut;
	PISO_Shift_Register uut (.Data_In(Data_In), .Clock(Clock), .Reset(Reset), .SOut(SOut), .Load(Load));
	
	initial
	$monitor("Reset = %b | Load = %b | Data_In = %b | Serial Out = %b",Reset,Load,Data_In,SOut);
	
	initial 
	Clock = 1'b0;
	
	always
	#50 Clock = ~Clock;
	
	initial
	begin
		Reset = 0;
		#50 Reset = 1; Load = 0; Data_In = 4'b0101;
		#50 Load = 1;
	end
	
//	initial
//	#800 $finish;
      
endmodule

