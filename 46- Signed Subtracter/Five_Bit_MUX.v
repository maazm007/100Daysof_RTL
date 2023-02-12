module Five_Bit_MUX(Mux_Out,A,B,sel,Reset);
	input [5:0] B;
	input [3:0] A;
	input Reset,sel;
	output [5:0] Mux_Out;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
	supply0 g1,g2;
	and a1(w1,~sel,A[0]);
	and a2(w2,sel,B[0]);
	or o1(Mux_Out[0],w1,w2);
	and a3(w3,~sel,A[1]);
	and a4(w4,sel,B[1]);
	or o2(Mux_Out[1],w3,w4);
	and a5(w5,~sel,A[2]);
	and a6(w6,sel,B[2]);
	or o3(Mux_Out[2],w5,w6);
	and a7(w7,~sel,A[3]);
	and a8(w8,sel,B[3]);
	or o4(Mux_Out[3],w7,w8);
	and a9(w9,~sel,1'b0);
	and a10(w10,sel,B[4]);
	or o5(Mux_Out[4],w9,w10);
	or o6(Mux_Out[5],w11,w12);
	and a11(w11,~sel,1'b0);
	and a12(w12,sel,B[5]);
	
endmodule
