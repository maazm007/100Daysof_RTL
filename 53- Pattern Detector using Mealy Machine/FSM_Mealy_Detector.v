// Author: Maaz Mahmood
// Create Date:    09:37:56 03/10/2023 
// Module Name:    FSM_Mealy_Detector 

module FSM_Mealy_Detector(Din, Clock, Reset, Y);
	input Din,Clock,Reset;
	output reg Y;
	reg [1:0] State,Next_State;
	localparam Sin = 2'b00, S1 = 2'b01, S11 = 2'b10, S110 = 2'b11;
	always @(posedge Clock, posedge Reset)
	begin
		if(Reset)
			State <= Sin;
		else
			State <= Next_State;
	end
	
	always @(State, Din)
	begin
	case(State)
		Sin: begin
		if(Din)
			Next_State <= S1;
		else
			Next_State <= Sin;
		end
		
		S1: begin
		if(Din)
			Next_State <= S11;
		else
			Next_State <= Sin;
		end
		
		S11: begin
		if(!Din)
			Next_State <= S110;
		else
			Next_State <= S11;
		end
		
		S110: begin
		if(Din)
			Next_State <= S11;
		else
			Next_State <= Sin;
		end
	endcase
	end
	
	always @(State, Din)
	begin
	case(State)
		Sin: Y = 0;
		S1: Y = 0;
		S11: Y = 0;
		S110: begin
		if(Din)
			Y = 1;
		else
			Y = 0;
		end
	endcase
	end
endmodule
