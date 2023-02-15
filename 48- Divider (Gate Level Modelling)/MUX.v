module MUX(I0,I1,Sel,MUX_Out,Reset);
	input I0, I1, Sel, Reset;
	output reg MUX_Out;
	always @(*)
	begin
	if(Reset)
	begin
		assign MUX_Out = (~Sel && I0) || (Sel && I1);
	end
	end
endmodule
