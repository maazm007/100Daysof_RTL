// Author: Maaz Mahmood
// Create Date:    10:33:22 02/04/2023 
// Module Name:    N_Bit_Adder 

module N_Bit_Adder(A,B,Sum,Cout,Cin);
	parameter N = 30;
	input[N-1:0] A,B;
	input Cin;
	output Cout;
	output [N-1:0] Sum;
   wire [N:0] Carry;
   assign Carry[0] = Cin;
   genvar i;
   generate for(i = 0;i < N; i = i + 1) 
	begin: adder_loop
			wire t1,t2,t3;
			xor g1(t1,A[i],B[i]);
			xor g2(Sum[i],t1,Carry[i]);
			and g3(t2,A[i],B[i]);
			and g4(t3,t1,Carry[i]);
         or g5(Carry[i+1],t2,t3);
	end
   endgenerate
	assign Cout = Carry[N];
endmodule

