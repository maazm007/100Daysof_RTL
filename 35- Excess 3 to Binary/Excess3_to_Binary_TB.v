module Excess3_to_Binary_TB;
	reg [7:0] Ex3;
	wire [5:0] Binary;
	Excess3_to_Binary uut (.Ex3(Ex3), .Binary(Binary));

	initial
	Ex3 = 8'b01101001;
	
	initial 
	begin
		#50 Ex3 = 8'b01110101; //7 5
		#50 Ex3 = 8'b01101010; //6 10
		#50 Ex3 = 8'b01110111; //7 7
		#50 Ex3 = 8'b01011001; //5 9 
		#50 Ex3 = 8'b01000011; //4 3
 		#50 Ex3 = 8'b00110110; //3 6 
		#50 Ex3 = 8'b10000100; //8 4
		#50 Ex3 = 8'b10010110; //9 6
		#50 Ex3 = 8'b01011011; //5 11
	end
      
	initial
	#450 $finish;
	
	initial
	$monitor("Excess3 = %b | Binary = %b | Decimal Equivalent of Binary = %d",Ex3,Binary,Binary);

endmodule

