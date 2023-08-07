`timescale 1ns / 1ps

module main_controller(
    input [3:0] first,
    input [3:0] second,
    input [3:0] third,
    input [3:0] fourth,
    output reg [3:0] final,
    input [1:0] refresh_count
    );
    
    always@(refresh_count)
    begin
        case(refresh_count)
        2'b00: final = first;
        2'b01: final = second;
        2'b10: final = third;
        2'b11: final = fourth;
        endcase
    end
endmodule
