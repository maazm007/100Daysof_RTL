module Twos_Complement_Nine_Bit(A, Comp, Reset);
	input [8:0] A;
	output [8:0] Comp;
	input Reset;
	wire w1, w2, w3, w4, w5, w6, w7;
	Half_Adder h1(Comp[0], w1, ~A[0], 1'b1, Reset);
	Half_Adder h2(Comp[1], w2, ~A[1], w1, Reset);
	Half_Adder h3(Comp[2], w3, ~A[2], w2, Reset);
	Half_Adder h4(Comp[3], w4, ~A[3], w3, Reset);
	Half_Adder h5(Comp[4], w5, ~A[4], w4, Reset);
	Half_Adder h6(Comp[5], w6, ~A[5], w5, Reset);
	Half_Adder h7(Comp[6], w7, ~A[6], w6, Reset);
	Half_Adder h8(Comp[7], w8, ~A[7], w7, Reset);
	Half_Adder h9(Comp[8],    , 1'b1, w8, Reset);
endmodule
