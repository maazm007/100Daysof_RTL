module Half_Subtracter_TB;
	reg A;
	reg B;
	wire Diff;
	wire Borr;
	Half_Subtracter uut (
		.A(A), 
		.B(B), 
		.Diff(Diff), 
		.Borr(Borr)
	);

	initial
	begin
		$monitor($time," A = %b | B = %b | Difference = %b | Borrow = %b",A,B,Diff,Borr);		
	end
	initial
	begin
		A = 0; B = 0;
		#100 A = 0; B = 1;
		#100 A = 1; B = 0;
		#100 A = 1; B = 1;
	end
endmodule

