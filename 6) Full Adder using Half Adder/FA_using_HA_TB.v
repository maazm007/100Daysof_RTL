module FA_using_HA_TB;
	reg A;
	reg B;
	reg Cin;
	wire Sum;
	wire Carry;
	FA_using_HA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Carry(Carry));
initial 
	begin
		$monitor($time, "A = %b | B = %b | Cin = %b | Sum = %b | Carry = %b",A,B,Cin,Sum,Carry);
	end
initial
	begin
		A = 0; B = 0; Cin = 0;
		#100 A = 0; B = 0; Cin = 1;
		#100 A = 0; B = 1; Cin = 0;
		#100 A = 0; B = 1; Cin = 1;
		#100 A = 1; B = 0; Cin = 0;
		#100 A = 1; B = 0; Cin = 1;
		#100 A = 1; B = 1; Cin = 0;
		#100 A = 1; B = 1; Cin = 1;
	end
initial
	#800 $finish;
endmodule

