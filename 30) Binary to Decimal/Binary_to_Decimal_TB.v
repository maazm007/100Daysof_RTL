module Binary_to_Decimal_TB;
	reg [3:0] Number;
	wire [3:0] Dec;
	integer i;
	Binary_to_Decimal uut (.Number(Number), .Dec(Dec));

	initial
	$monitor("Binary Number = %b | Decimal = %d",Number,Dec);
	
	initial 
	begin
		Number = 0000;
		for(i = 1;i < 16;i = i + 1)
		begin
			#50 Number = Number + 4'b1;
		end
	end
   
	initial
	#850 $finish;
	
endmodule

