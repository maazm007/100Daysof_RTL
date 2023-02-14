module Signed_Multiplier_TB;
	reg [3:0] inputA;
	reg [3:0] inputB;
	reg S0;
	reg S1;
	reg Reset;
	wire signed [8:0] Product;
	Signed_Multiplier uut (.inputA(inputA), .inputB(inputB), .S0(S0), .S1(S1), .Product(Product), .Reset(Reset));
	
	initial
	$monitor("Reset = %b |inputA = %d | inputB = %d | S0 = %b | S1 = %b | Product = %d",Reset,inputA,inputB,S0,S1,Product);
	
	initial 
	begin
		Reset = 1; inputA = 4'b1101; inputB = 4'b1001; S0 = 1'b0; S1 = 1'b0;
		#100 S0 = 1'b1;
		#100 S0 = 1'b0; S1 = 1'b1;
		#100 S0 = 1'b1; S1 = 1'b1;
	end
   
	initial
	#400 $finish;
endmodule

