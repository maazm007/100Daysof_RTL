// Author: Maaz Mahmood
// Create Date:    20:28:22 01/07/2023 
// Module Name:    Three_Bit_Comparator 

module Three_Bit_Comparator(A,B,Greater,Less,Equal);
	input [2:0] A,B;
	output Greater,Less,Equal;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;
	not n1(w1,A[0]);
	not n2(w2,A[1]);
	not n3(w3,A[2]);
	not n4(w4,B[0]);
	not n5(w5,B[1]);
	not n6(w6,B[2]);
	
	//equal to
	xnor x1(w7,A[0],B[0]);
	xnor x2(w8,A[1],B[1]);
	xnor x3(w9,A[2],B[2]);
	and a1(Equal,w7,w8,w9);
	
	//greater than
	and a2(w10,A[2],w6);
	and a3(w11,A[1],w5);
	and a4(w12,w9,w11);
	and a5(w13,A[0],w4);
	and a6(w14,w13,w9,w8);
	or o1(Greater,w10,w12,w14);
	
	//less than
	and a7(w15,B[2],w3);
	and a8(w16,B[1],w2);
	and a9(w17,w9,w16);
	and a10(w18,B[0],w1);
	and a11(w19,w18,w9,w8);
	or o2(Less,w19,w15,w17);
endmodule
