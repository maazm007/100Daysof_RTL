// Author: Maaz Mahmood
// Create Date:    18:03:25 12/24/2022 
// Module Name:    Half_Adder 

module Half_Adder(Sum,Carry,In1,In2);
	input In1,In2;
	output Sum,Carry;
	assign Sum = In1 ^ In2;
	assign Carry = In1 && In2;
endmodule
