module Half_Adder_TB;
	reg In1;
	reg In2;
	wire Sum;
	wire Carry;
	Half_Adder uut (
		.Sum(Sum), 
		.Carry(Carry), 
		.In1(In1), 
		.In2(In2)
	);
	initial
	begin
		$monitor($time," A = %b | B = %b | Sum = %b | Carry = %b",In1,In2,Sum,Carry);
	end
	initial
	begin
		In1 = 0; In2 = 0;
		#100 In1 = 0; In2 = 1;
		#100 In1 = 1; In2 = 0;
		#100 In1 = 1; In2 = 1;
	end
endmodule

