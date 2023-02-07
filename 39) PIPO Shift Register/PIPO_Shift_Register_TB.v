module PIPO_Shift_Register_TB;
	reg [3:0] Data_In;
	reg Clock;
	reg Reset;
	wire [3:0] Q;
	PIPO_Shift_Register uut (.Data_In(Data_In), .Clock(Clock), .Reset(Reset), .Q(Q));
	
	initial
	$monitor("Reset = %b | Data_In = %b | Output = %b",Reset,Data_In,Q);
	
	initial
	Clock = 1'b0;
	
	always
	#100 Clock = ~Clock;
	
	initial 
	begin
		Reset = 0;
		#100 Reset = 1; Data_In = 4'b1011;
		#100 Data_In = 4'b0100;
		#100 Data_In = 4'b0110;
		#100 Data_In = 4'b1001;
		#100 Data_In = 4'b1111;
	end
   
	initial
	#600 $finish;
	
endmodule

