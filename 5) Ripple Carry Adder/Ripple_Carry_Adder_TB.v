

module Ripple_Carry_Adder_TB;
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	wire [3:0] Sum;
	wire Carry_Out;
	Ripple_Carry_Adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Carry_Out(Carry_Out)
	);
	initial 
	begin
		$monitor($time," A = %b | B = %b | Cin = %b | Sum = %b | Carry_Out = %b",A,B,Cin,Sum,Carry_Out);
	end
   initial
	begin
		A = 0000; B = 1111; Cin = 0;
		#100 A = 0001; B = 1110; Cin = 0;
		#100 A = 0010; B = 1101; Cin = 0;
		#100 A = 0011; B = 1100; Cin = 0;
		#100 A = 0100; B = 1011; Cin = 0;
		#100 A = 0101; B = 1010; Cin = 0;
		#100 A = 0110; B = 1001; Cin = 0;
		#100 A = 1111; B = 1111; Cin = 0;
	end
	initial
		#800 $finish;
endmodule

