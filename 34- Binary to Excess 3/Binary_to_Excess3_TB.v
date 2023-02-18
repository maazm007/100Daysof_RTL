module Binary_to_Excess3_TB;
	reg [5:0] Binary;
	wire [7:0] Ex3;
	integer i;
	Binary_to_Excess3 uut (.Binary(Binary), .Ex3(Ex3));
	
	initial
	Binary = 0;
	
	initial 
	begin
		for(i = 0;i < 40;i = i + 1)
			#10 Binary = Binary + 6'b1;
	end
		
	initial
	$monitor("Binary = %b | Excess3 Code = %b",Binary,Ex3);
	
	initial
	#200 $finish;
	
      
endmodule

