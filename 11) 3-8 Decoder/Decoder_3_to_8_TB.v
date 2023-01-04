module Decoder_3_to_8_TB;
	reg A;
	reg B;
	reg C;
	reg Enable;
	wire [7:0] Decode_Out;
	Decoder_3_to_8 uut (.A(A), .B(B), .C(C), .Enable(Enable), .Decode_Out(Decode_Out));
	initial 
	begin
		$monitor($time," Enable = %b | A = %b | B = %b | C = %b | Output = %b",Enable,A,B,C,Decode_Out);
	end
	
	initial
	begin
		Enable = 0; A = 0; B = 0; C = 0;
		#10 Enable = 0; A = 0; B = 0; C = 1;
		#10 Enable = 0; A = 0; B = 1; C = 0;
		#10 Enable = 0; A = 0; B = 1; C = 1;
		#10 Enable = 0; A = 1; B = 0; C = 0;
		#10 Enable = 0; A = 1; B = 0; C = 1;
		#10 Enable = 0; A = 1; B = 1; C = 0;
		#10 Enable = 0; A = 1; B = 1; C = 1;
		#10 Enable = 1; A = 0; B = 0; C = 0;
		#10 Enable = 1; A = 0; B = 0; C = 1;
		#10 Enable = 1; A = 0; B = 1; C = 0;
		#10 Enable = 1; A = 0; B = 1; C = 1;
		#10 Enable = 1; A = 1; B = 0; C = 0;
		#10 Enable = 1; A = 1; B = 0; C = 1;
		#10 Enable = 1; A = 1; B = 1; C = 0;
		#10 Enable = 1; A = 1; B = 1; C = 1;
   end
	
	initial
		#160 $finish;
endmodule

