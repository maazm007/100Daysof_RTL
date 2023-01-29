module Decimal_to_Binary_TB;
	reg [3:0] Number;
	wire [3:0] Bin;
	integer i;
	Decimal_to_Binary uut (.Number(Number), .Bin(Bin));
	
	initial
	$monitor("Number = %d | Binary = %b",Number,Bin);
	
	initial
		Number = 4'b0;
	initial 
	begin
		for(i = 0;i < 15;i = i + 1)
		begin
			Number = Number + 4'b1;
			#50;
		end
	end
	
	initial
	#850 $finish;
      
endmodule

