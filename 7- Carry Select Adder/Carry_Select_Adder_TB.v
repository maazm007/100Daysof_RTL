module Carry_Select_Adder_TB;
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	wire [3:0] Sum;
	wire Carry;
	Carry_Select_Adder uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Carry(Carry));
	initial 
	begin
		$monitor($time," A = %b | B = %b | Cin = %b | Sum = %b | Carry = %b",A,B,Cin,Sum,Carry);
	end
	initial
	begin
	//taking some random values
		A = 0011; B = 1101; Cin = 0;
		#100 A = 0010; B = 1111; Cin = 1;
		#100 A = 1011; B = 0110; Cin = 0;
		#100 A = 1001; B = 0101; Cin = 1;
		#100 A = 1011; B = 0001; Cin = 0;
		#100 A = 0100; B = 1000; Cin = 1;
		#100 A = 1110; B = 1111; Cin = 0;
		#100 A = 0101; B = 0011; Cin = 1;
	end
   initial
		#800 $finish;
endmodule

