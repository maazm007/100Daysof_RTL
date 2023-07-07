module N_Bit_Adder_TB;
	reg [29:0] A;
	reg [29:0] B;
	reg Cin;
	wire [29:0] Sum;
	wire Cout;
	N_Bit_Adder uut (.A(A), .B(B), .Sum(Sum), .Cout(Cout), .Cin(Cin));
	
	initial
	$monitor("A = %d\tB = %d\tSum = %d\t\tCarry_Out = %d",A,B,Sum,Cout);
	
	initial 
	begin
		A = 3; B = 6; Cin = 0;
		#100 A = 33; B = 66;
		#100 A = 333; B = 666;
		#100 A = 3333; B = 6666;
		#100 A = 33333; B = 66666;
		#100 A = 333333; B = 666666;
		#100 A = 3333333; B = 6666666;
	end
   
	initial
	#700 $finish;
	
endmodule

