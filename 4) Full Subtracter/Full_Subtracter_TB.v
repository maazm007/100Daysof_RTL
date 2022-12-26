module Full_Subtracter_TB;
	reg A;
	reg B;
	reg Bin;
	wire Diff;
	wire Borrow;
	Full_Subtracter uut (
		.A(A), 
		.B(B), 
		.Bin(Bin), 
		.Diff(Diff), 
		.Borrow(Borrow)
	);
initial
	$monitor($time," A = %b | B = %b | Bin = %b | Difference = %b | Borrow = %b",A,B,Bin,Diff,Borrow);
initial 
	begin
		A = 0; B = 0; Bin = 0;
		#100 A = 0; B = 0; Bin = 1;
		#100 A = 0; B = 1; Bin = 0;
		#100 A = 0; B = 1; Bin = 1;
		#100 A = 1; B = 0; Bin = 0;
		#100 A = 1; B = 0; Bin = 1;
		#100 A = 1; B = 1; Bin = 0;
		#100 A = 1; B = 1; Bin = 1;
	end
initial
	#800 $finish;
endmodule

