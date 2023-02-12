module Signed_Adder_TB;
	reg [3:0] A;
	reg [3:0] B;
	reg S0;
	reg S1;
	reg Reset;
	wire signed[5:0] Sum;
	Signed_Adder uut (.A(A), .B(B), .Sum(Sum), .S0(S0), .S1(S1), .Reset(Reset));
	
	initial
	$monitor("A = %d | B = %d | Sign_A = %b | Sign_B = %b | Sum = %d",A,B,S0,S1,Sum);
	
	initial 
	begin
		Reset = 1'b1; S0 = 1'b0; S1 = 1'b0; A = 4'b1100; B = 4'b1001; 
		#100 S0 = 1'b1; S1 = 1'b0;
		#100 S0 = 1'b0; S1 = 1'b1;
		#100 S0 = 1'b1; S1 = 1'b1;
	end
      
	initial
	#400 $finish;
	
endmodule

