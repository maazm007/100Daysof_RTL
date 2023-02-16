module Signed_Divider_TB;
	reg [3:0] Dividend;
	reg [3:0] Divisor;
	reg S0;
	reg S1;
	reg Reset;
	wire signed [5:0] Quotient;
	wire [3:0] Remainder;
	Signed_Divider uut (.Dividend(Dividend), .Divisor(Divisor), .Quotient(Quotient), .Remainder(Remainder), .S0(S0), .S1(S1), .Reset(Reset));
	
	initial
	$monitor("Reset = %b | Dividend = %d | Divisor = %d | S0 = %b | S1 = %b | Quotient = %d | Remainder = %d",Reset,Dividend,Divisor,S0,S1,Quotient,Remainder);
	initial 
	begin
		Reset = 1; S0 = 1'b0; S1 = 1'b0; Dividend = 4'b1110; Divisor = 4'b0101;
		#100 S0 = 1'b1; S1 = 1'b0;
		#100 Dividend = 4'b1101; Divisor = 4'b0111; S0 = 1'b0; S1 = 1'b1;
		#100 S0 = 1'b1; S1 = 1'b1;
	end
	
	initial
	#400 $finish;
      
endmodule

