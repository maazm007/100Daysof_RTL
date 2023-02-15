module Four_Bit_Divider_TB;
	reg [3:0] Dividend;
	reg [3:0] Divisor;
	reg Reset;
	wire [3:0] Quotient;
	wire [3:0] Remainder;
	Four_Bit_Divider uut (.Dividend(Dividend), .Divisor(Divisor), .Reset(Reset), .Quotient(Quotient), .Remainder(Remainder));
	
	initial
	$monitor("Reset = %b | Dividend = %d | Divisor = %d | Quotient = %d | Remainder = %d",Reset,Dividend,Divisor,Quotient,Remainder);
	initial 
	begin
		Reset = 1'b1; Dividend = 4'b1101; Divisor = 4'b0011;
		#100 Dividend = 4'b1001; Divisor = 4'b0010;
		#100 Dividend = 4'b1100; Divisor = 4'b0111;
		#100 Dividend = 4'b1111; Divisor = 4'b0100;
		#100 Dividend = 4'b1001; Divisor = 4'b0001;
		#100 Dividend = 4'b1111; Divisor = 4'b1000;
		#100 Dividend = 4'b1110; Divisor = 4'b0101;
	end
   
	initial
	#600 $finish;
	
endmodule

