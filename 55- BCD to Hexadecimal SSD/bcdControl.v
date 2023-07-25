module bcdControl(
    input [3:0] digit0, //rightmost digit - ones place
    input [3:0] digit1, //tens place
    input [3:0] digit2, //hundreds place
    input [3:0] digit3, //leftmost digit - thousands place
    input [1:0] refresh_count,
    output reg [3:0] final_digit); // which digit out of 4 will be displayed
    
always@(refresh_count)
begin  
    case(refresh_count)
    2'b00: final_digit = digit0;
    2'b01: final_digit = digit1;
    2'b10: final_digit = digit2;
    2'b11: final_digit = digit3;
    default: final_digit = 4'b0000;
    endcase
end
endmodule
