module Multiplexer_4_Bit_TB;
	reg I0;
	reg I1;
	reg I2;
	reg I3;
	reg Sel0;
	reg Sel1;
	wire MUX_Out;
	Multiplexer_4_to_1 uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3), .Sel0(Sel0), .Sel1(Sel1), .MUX_Out(MUX_Out));
	initial 
	begin
		$monitor($time,"Sel0 = %b | Sel1 = %b | MUX_Out = %b",Sel0,Sel1,MUX_Out);
	end
	initial
	begin
		I0 = 1'b1;
		I1 = 1'b0;
		I2 = 1'b0;
		I3 = 1'b1;
	end
   initial
	begin
		Sel0 = 0; Sel1 = 0;
		#100 Sel0 = 1; Sel1 = 0;
		#100 Sel0 = 0; Sel1 = 1;
		#100 Sel0 = 1; Sel1 = 1;
	end
	initial
		#400 $finish;
endmodule

