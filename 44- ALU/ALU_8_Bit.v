// Author: Maaz Mahmood
// Create Date:   17:37:31 02/11/2023
// Design Name:   ALU_8_Bit

module ALU_8_Bit(inputA, inputB, OpCode, COut, OutALU);
	input [7:0] inputA;
	input [7:0] inputB;
	input [2:0] OpCode;
	output reg [15:0] OutALU;
	output reg COut;
	parameter [2:0] ADD = 3'b000, SUB = 3'b001, MUL = 3'b010, LSHFT = 3'b011,
				 RSHFT = 3'b100, AND = 3'b101, OR = 3'b110, XOR = 3'b111;
	
	reg [15:0] combine;
	
	always @(inputA or inputB or OpCode)
	begin
		case(OpCode)
		ADD: begin
		OutALU = inputA + inputB;
		if(OutALU[8] == 1'b1)
			COut = 1;
		else
			COut = 0;
		end
		
		SUB: begin
		if(inputA > inputB)
			OutALU = inputA - inputB;
		else
			OutALU = inputB - inputA;
		end

		MUL: begin
		OutALU = inputA * inputB;
		end
		
		LSHFT: begin
		if(inputA == 0)
			OutALU = inputB << 1;
		else if(inputB == 0)
			OutALU = inputA << 1;
		else
			begin
			combine = {inputA,inputB};
			OutALU = combine << 1;
			end
		end
		
		RSHFT: begin
		if(inputA == 0)
			OutALU = inputB >> 1;
		else if(inputB == 0)
			OutALU = inputA >> 1;
		else
			begin
			combine = {inputA,inputB};
			OutALU = combine >> 1;
			end
		end
		
		AND: begin
		OutALU = inputA & inputB;
		end
		
		OR: begin
		OutALU = inputA | inputB;
		end
	
		XOR: begin
		OutALU = inputA ^ inputB;
		end
		endcase
	end
endmodule
	
		