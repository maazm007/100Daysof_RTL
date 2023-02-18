// Author: Maaz Mahmood
// Create Date:    15:03:27 01/31/2023 
// Module Name:    BCD_to_Binary 

module BCD_to_Binary(Number,Binary);
	input [7:0] Number;
	output reg [5:0] Binary;
	integer First,Last,count,Decimal;
	integer index;
	always@(Number)
	begin
		Binary = 0;
		First = 0;
		Last = 0;
		Decimal = 0;
		index = 0;
		for(count = 0;count < 4;count = count + 1) //first 4 digit converted in decimal
		begin
			Last = Last + (Number[count]*(2**count));
		end
		for(count = 0;count < 3;count = count + 1) //last 4 digit converted in decimal
		begin
			First = First + (Number[count+4]*(2**count));
		end
		Decimal = (First * 10) + Last; // obtained the complete decimal number
		while(Decimal > 0)
		begin // converted in binary
			if(Decimal % 2 == 1)
				Binary[index] = 1'b1;
			else
				Binary[index] = 1'b0;
			Decimal = Decimal / 2;
			index = index + 1;
		end
	end
endmodule
