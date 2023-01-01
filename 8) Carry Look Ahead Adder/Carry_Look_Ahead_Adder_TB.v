module Carry_Look_Ahead_Adder_TB;
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	wire [3:0] Sum;
	wire Carry;
	Carry_Look_Ahead_Adder uut (
		.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Carry(Carry));
initial 
	begin
		$monitor($time," A = %b | B = %b | Cin = %b | Sum = %b | Carry = %b",A,B,Cin,Sum,Carry);
	end
	initial
	begin
	//testing few random cases
		A = 0011; B = 0101; Cin = 0;
		#100 A = 0010; B = 0110; Cin = 1;
		#100 A = 0111; B = 1001; Cin = 0;
		#100 A = 1010; B = 0110 ; Cin = 1;
		#100 A = 1100; B = 0111; Cin = 0;
		#100 A = 1101; B = 1000; Cin = 1;
		#100 A = 1111; B = 1010; Cin = 0;
		#100 A = 1110; B = 1111; Cin = 1;
   end
	initial
		#800 $finish;
endmodule

