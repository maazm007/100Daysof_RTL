module BCD_to_Binary_TB;
	reg [7:0] Number;
	wire [5:0] Binary;
	BCD_to_Binary uut (.Number(Number), .Binary(Binary));
	
	initial
	$monitor("BCD Number = %b | Binary = %b | Decimal Equivalent = %d",Number,Binary,Binary);
	
	initial 
	begin
		Number = 8'b00000001; //01
		#10 Number = 8'b00100011; //23
		#10 Number = 8'b01000101; //45
		#10 Number = 8'b01100011; //63
		#10 Number = 8'b00101001; //29
		#10 Number = 8'b00010000; //10
		#10 Number = 8'b00110010; //32
		#10 Number = 8'b01010100; //54
		#10 Number = 8'b00110110; //36
		#10 Number = 8'b01011000; //58
		#10 Number = 8'b00100100; //24
	end
	
	initial
	#100 $finish;
      
endmodule

