module FSM_Counter_TB;
	reg Clk;
	reg Din;
	reg Reset;
	wire [1:0] Y;
	FSM_Counter uut (
		.Clk(Clk), 
		.Din(Din), 
		.Reset(Reset), 
		.Y(Y));

	initial 
		Clk = 1'b0;
		
	always
		#10 Clk = ~Clk;
	
	initial
	begin
		#10 Reset = 1'b1;
		#10 Reset = 1'b0;
		#10 Din = 1'b1;
		#60 Din = 1'b0;
	end
	
	initial
		#120 $finish;
      
endmodule

