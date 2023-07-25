module anodeControl(
    input [1:0] refresh_count,
    output reg [3:0] anode = 0);
    
always@(refresh_count)
begin
    case(refresh_count)
    2'b00: anode = 4'b1110; //rightmost
    2'b01: anode = 4'b1101;
    2'b10: anode = 4'b1011;
    2'b11: anode = 4'b0111;
    default: anode = 4'b1111; //leftmost
    endcase
end
endmodule