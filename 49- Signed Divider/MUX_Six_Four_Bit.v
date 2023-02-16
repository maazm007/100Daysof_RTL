module MUX_Six_Four_Bit(A,B,Sel,MUX_Out,Reset);
	input [5:0] B;
	input [3:0] A;
	input Sel, Reset;
	output reg [5:0] MUX_Out;
	always @(*)
	begin
		if(Reset)
		begin
			MUX_Out[0] = (~Sel && A[0]) || (Sel && B[0]);
			MUX_Out[1] = (~Sel && A[1]) || (Sel && B[1]);
			MUX_Out[2] = (~Sel && A[2]) || (Sel && B[2]);
			MUX_Out[3] = (~Sel && A[3]) || (Sel && B[3]);
			MUX_Out[4] = (~Sel && 1'b0) || (Sel && B[4]);
			MUX_Out[5] = (~Sel && 1'b0) || (Sel && B[5]);
		end
	end
endmodule
