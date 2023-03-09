// Author: Maaz Mahmood
// Create Date:    21:52:58 03/09/2023 
// Module Name:    FSM_Moore_Detector 

module FSM_Moore_Detector(Din, Clock, Reset, Y);
	input Din, Clock, Reset;
	output reg Y;
	reg [2:0] State, Next_State;
	localparam Sin = 3'b000, S1 = 3'b001, S11 = 3'b010, S110 = 3'b011, S1101 = 3'b100;
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
			Next_State = S1;
		else
			Next_State = Sin;
		Y = 0;
		end
		
		S1: begin
		if(Din)
			Next_State = S11;
		else
			Next_State = Sin;
		Y = 0;
		end
		
		S11: begin
		if(!Din)
			Next_State = S110;
		else
			Next_State = S11;
		Y = 0;
		end
		 
		S110: begin
		if(Din)
			Next_State = S1101;
		else
			Next_State = Sin;
		Y = 0;
		end
		
		S1101: begin
		if(Din)
			Next_State = S11;
		else
			Next_State = Sin;
		Y = 1;
		end
	endcase
	end
endmodule
