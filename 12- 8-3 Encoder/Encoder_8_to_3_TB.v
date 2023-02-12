module Encoder_8_to_3_TB;
	reg [7:0] In;
	reg Enable;
	wire [2:0] Out;
	integer i;
	Encoder_8_to_3 uut (.Out(Out), .In(In), .Enable(Enable));

	initial 
	begin
		$monitor($time," Enable = %b | In = %b | Out = %b",Enable,In,Out);
	end
	
	initial
	begin
		Enable = 0;
		i = 0;
		for(i = 0;i < 8;i=i+1)
		begin
			In = 2**i;
			#10;
		end
		#10;
		Enable = 1;
		for(i = 0;i < 8;i=i+1)
		begin
			In = 2**i;
			#10;
		end
	end
	initial
		#170 $finish;
endmodule

