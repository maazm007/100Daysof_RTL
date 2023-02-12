module Three_Bit_Comparator_TB;
	reg [2:0] A;
	reg [2:0] B;
	wire Greater;
	wire Less;
	wire Equal;
	Three_Bit_Comparator uut (.A(A), .B(B), .Greater(Greater), .Less(Less),.Equal(Equal));
	initial
		$monitor("A = %d | B = %d | Greater = %b | Equal = %b | Less = %b",A,B,Greater,Equal,Less);
	initial 
	begin
		A = 100; B = 111;
		#100 A = 001; B = 011;
		#100 A = 101; B = 010;
		#100 A = 110; B = 101;
		#100 A = 111; B = 111;
		#100 A = 011; B = 011;
	end
	initial 
		#600 $finish;
      
endmodule

