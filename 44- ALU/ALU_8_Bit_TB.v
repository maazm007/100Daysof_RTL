module ALU_8_Bit_TB;
	reg [7:0] inputA;
	reg [7:0] inputB;
	reg [2:0] OpCode;
	wire COut;
	wire [15:0] OutALU;
	ALU_8_Bit uut (.inputA(inputA), .inputB(inputB), .OpCode(OpCode), .COut(COut), .OutALU(OutALU));
	
	initial
	$monitor("inputA = %d | inputB = %d | OpCode = %d | OutALU = %b | OutALU = %d",inputA,inputB,OpCode,OutALU,OutALU);
	initial 
	begin
		inputA = 8'b00011000; inputB = 8'b00001000; OpCode = 3'b000;
		#100 OpCode = 3'b001;
		#100 OpCode = 3'b010;
		#100 OpCode = 3'b011;
		#100 OpCode = 3'b100;
		#100 OpCode = 3'b101;
		#100 OpCode = 3'b110;
		#100 OpCode = 3'b111;
	end
	
	initial
	#800 $finish;
      
endmodule

