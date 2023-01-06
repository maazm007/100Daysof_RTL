module Priority_Encoder_TB;
	reg [7:0] In;
	reg Enable;
	wire [2:0] Out;
	wire Valid_Bit;
	Priority_Encoder uut (.In(In), .Enable(Enable), .Out(Out), .Valid_Bit(Valid_Bit));
	initial
		$monitor("Enable = %b | In = %b | Out = %b | Valid Bit = %b",Enable,In,Out,Valid_Bit);
   initial
	begin
		Enable = 0;
		In = 8'b00000001;
		#10 In = 8'b0000001x;
		#10 In = 8'b000001xx;
		#10 In = 8'b00001xxx;
		#10 In = 8'b0001xxxx;
		#10 In = 8'b001xxxxx;
		#10 In = 8'b01xxxxxx;
		#10 In = 8'b1xxxxxxx;
		#10 Enable = 1; In = 8'b00000001;
		#10 In = 8'b0000001x;
		#10 In = 8'b000001xx;
		#10 In = 8'b00001xxx;
		#10 In = 8'b0001xxxx;
		#10 In = 8'b001xxxxx;
		#10 In = 8'b01xxxxxx;
		#10 In = 8'b1xxxxxxx;
		#10 In = 8'b00000000;
	end
	initial
		#170 $finish;
endmodule

