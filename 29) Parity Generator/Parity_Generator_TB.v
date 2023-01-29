module Parity_Generator_TB;
	reg A;
	reg B;
	reg C;
	wire Even_Parity;
	wire Odd_Parity;
	Parity_Generator uut (.A(A), .B(B), .C(C), .Even_Parity(Even_Parity), .Odd_Parity(Odd_Parity));
	initial 
	begin
		A = 0; B = 0; C = 0;
		#100 A = 0; B = 0; C = 1;
		#100 A = 0; B = 1; C = 0;
		#100 A = 0; B = 1; C = 1;
		#100 A = 1; B = 0; C = 0;
		#100 A = 1; B = 0; C = 1;
		#100 A = 1; B = 1; C = 0;
		#100 A = 1; B = 1; C = 1;
	end
	
	initial
	$monitor("A = %b | B = %b | C = %b | Odd Parity = %b | Even Parity = %b",A,B,C,Odd_Parity,Even_Parity);
   
	initial
	#800 $finish;
endmodule

