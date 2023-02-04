module Decimal_to_Octal_TB;
	reg [15:0] Dec;
	wire [15:0] Octal;
	Decimal_to_Octal uut (.Dec(Dec), .Octal(Octal));
	
	initial
	$monitor("Dec = %d | Octal = %d",Dec,Octal);
	initial 
	begin
		Dec = 127;
		#50 Dec = 261;
		#50 Dec = 377;
		#50 Dec = 489;
		#50 Dec = 545;
		#50 Dec = 621;
		#50 Dec = 757;
		#50 Dec = 817;
		#50 Dec = 901;
		#50 Dec = 1095;
		#50 Dec = 1148;
		#50 Dec = 1220;
		#50 Dec = 1399;
		#50 Dec = 1473;
	end
	
	initial
	#650 $finish;
      
endmodule

