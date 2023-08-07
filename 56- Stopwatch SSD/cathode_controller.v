`timescale 1ns / 1ps

module cathode_controller(
    input [3:0] digit,
    output reg [6:0] g_to_a
    );
    
    always@(*)
    begin
        case(digit)
        4'b0000: g_to_a = 7'b1000000; //0
        4'b0001: g_to_a = 7'b1111001; //1
        4'b0010: g_to_a = 7'b0100100; //2
        4'b0011: g_to_a = 7'b0110000; //3
        4'b0100: g_to_a = 7'b0011001; //4
        4'b0101: g_to_a = 7'b0010010; //5
        4'b0110: g_to_a = 7'b0000010; //6
        4'b0111: g_to_a = 7'b1111000; //7
        4'b1000: g_to_a = 7'b0000000; //8 
        4'b1001: g_to_a = 7'b0010000; //9
        4'b1010: g_to_a = 7'b0001000; //A
        4'b1011: g_to_a = 7'b0000011; //b
        4'b1100: g_to_a = 7'b1000110; //C
        4'b1101: g_to_a = 7'b0100001; //d
        4'b1110: g_to_a = 7'b0000110; //E
        4'b1111: g_to_a = 7'b0001110; //F
        default: g_to_a = 7'b1000000;
        endcase
    end
endmodule
    