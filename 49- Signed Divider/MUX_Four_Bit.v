module MUX_Four_Bit(A,B,Sel,MUX_Out,Reset);
	input [3:0] A,B;
	input Sel, Reset;
	output reg [3:0] MUX_Out;
	always @(*)
	begin
		if(Reset)
		begin
			MUX_Out[0] = (~Sel && A[0]) || (Sel && B[0]);
			MUX_Out[1] = (~Sel && A[1]) || (Sel && B[1]);
			MUX_Out[2] = (~Sel && A[2]) || (Sel && B[2]);
			MUX_Out[3] = (~Sel && A[3]) || (Sel && B[3]);
		end
	end
endmodule
