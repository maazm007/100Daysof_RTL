// Author: Maaz Mahmood
// Create Date:    18:02:30 03/08/2023 
// Module Name:    FSM_Counter 

module FSM_Counter(Clk, Din, Reset, Y);
	input Clk,Din,Reset;
	output reg [1:0] Y;
	reg [1:0] State;
	localparam S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
	always @(posedge Clk)
	begin
		if(Reset)
			State <= S0;
		else
			State <= State;
	end
	
	always @(posedge Clk)
	begin
	case(State)
	S0: begin
	if(Din)
		State <= S1;
	else
		State <= S0;
	end
	
	S1: begin
	if(Din)
		State <= S2;
	else
		State <= S1;
	end
	
	S2: begin
	if(Din)
		State <= S3;
	else
		State <= S2;
	end
	
	S3: begin
	if(Din)
		State <= S0;
	else
		State <= S3;
	end
	endcase
	end

	always @(posedge Clk)
	begin
		assign Y = State;
	end 
endmodule
