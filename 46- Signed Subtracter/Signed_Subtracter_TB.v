module Signed_Subtracter_TB;
	reg [3:0] inputA;
	reg [3:0] inputB;
	reg S0;
	reg S1;
	reg Reset;
	wire signed [5:0] Diff;
	Signed_Subtracter uut (.inputA(inputA), .inputB(inputB), .Diff(Diff), .S0(S0), .S1(S1), .Reset(Reset));
	
	initial
	$monitor("Reset = %b | A = %d | B = %d | Sign_A = %b | Sign_B = %b | Difference = %d",Reset,inputA,inputB,S0,S1,Diff);
	
	initial 
	begin
		Reset = 1'b1; S0 = 1'b0; S1 = 1'b0; inputA = 4'b1110; inputB = 4'b1000;
		#100 S0 = 1'b1; S1 = 1'b0;
		#100 S0 = 1'b0; S1 = 1'b1;
		#100 S0 = 1'b1; S1 = 1'b1;
	end
	
	initial
	#400 $finish;
      
endmodule

