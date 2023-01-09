module Gray_to_Binar_TB;
	reg [3:0] G;
	wire [3:0] B;
	integer i;
	Gray_to_Binary_Converter uut (.B(B), .G(G));
	
	initial
		$monitor("Gray Code = %b | Binary Number = %b",G,B);
		
	initial 
	begin
		G = 0000;
		for(i = 0;i < 15;i = i + 1)
			#50 G = G + 4'b0001;
	end
	
	initial 
		#800 $finish;
endmodule

