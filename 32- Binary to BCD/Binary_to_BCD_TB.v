module Binary_to_BCD_TB;
	reg [5:0] Number;
	wire [7:0] BCD;
	integer i;
	Binary_to_BCD uut (.Number(Number), .BCD(BCD));
	
	initial
	$monitor("Binary Number = %b | Decimal Equivalent of Binary = %d | BCD = %b",Number,Number,BCD); 
	
	initial
	begin
	Number = 6;
	for(i = 0;i < 30;i = i + 1)
	begin
		#20 Number = Number + 2;
	end
	end
	
	initial
	#580 $finish;
endmodule

