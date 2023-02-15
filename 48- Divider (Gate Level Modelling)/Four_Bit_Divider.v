module Four_Bit_Divider(Dividend,Divisor,Reset,Quotient,Remainder);
	input [3:0] Dividend, Divisor;
	input Reset;
	output [3:0] Quotient;
	output reg [3:0] Remainder;
	wire [3:0] Twos_Complement;
	wire [4:0] tempSum_1, tempSum_2, tempSum_3, tempSum_4;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	assign Twos_Complement = (~Divisor) + 1'b1;
	Adder_Four_Bit f1({3'b0,Dividend[3]},Twos_Complement,tempSum_1,Reset);
	MUX m1(Dividend[3],tempSum_1[0],tempSum_1[4],w1,Reset);
	MUX m2(1'b0,tempSum_1[1],tempSum_1[4],w2,Reset);
	MUX m3(1'b0,tempSum_1[2],tempSum_1[4],w3,Reset);
	Adder_Four_Bit f2({w3,w2,w1,Dividend[2]},Twos_Complement,tempSum_2,Reset);
	MUX m4(Dividend[2],tempSum_2[0],tempSum_2[4],w4,Reset);
	MUX m5(w1,tempSum_2[1],tempSum_2[4],w5,Reset);
	MUX m6(w2,tempSum_2[2],tempSum_2[4],w6,Reset);
	Adder_Four_Bit f3({w6,w5,w4,Dividend[1]},Twos_Complement,tempSum_3,Reset);
	MUX m7(Dividend[1],tempSum_3[0],tempSum_3[4],w7,Reset);
	MUX m8(w4,tempSum_3[1],tempSum_3[4],w8,Reset);
	MUX m9(w5,tempSum_3[2],tempSum_3[4],w9,Reset);
	Adder_Four_Bit f4({w9,w8,w7,Dividend[0]},Twos_Complement,tempSum_4,Reset);
	always@(*)
	begin
	if(tempSum_4[4] == 1'b0)
		assign Remainder = {w9,w8,w7,Dividend[0]};
	else if(tempSum_4[4] == 1'b1)
		assign Remainder = tempSum_4[3:0];
	end
	assign Quotient = {tempSum_1[4],tempSum_2[4],tempSum_3[4],tempSum_4[4]};
endmodule
