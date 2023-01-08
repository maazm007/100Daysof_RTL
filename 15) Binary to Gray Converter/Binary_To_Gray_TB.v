module Binary_To_Gray_TB;
	reg [3:0] B;
	wire [3:0] G;
	integer i;
	Binary_to_Gray uut (.B(B), .G(G));

	initial
		$monitor("Binary = %b | Gray Code = %b",B,G);
		
	initial
	begin
		B = 4'b0000;
		for(i = 0;i < 15;i = i + 1)
			#50 B = B + 4'b0001;
	end
      
endmodule

