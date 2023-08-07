`timescale 1ns / 1ps

module anode_controller(
    input [1:0] refresh_count,
    output reg [3:0] anode = 0,
    output reg dp
    );
    
    always@(refresh_count)
    begin
        case(refresh_count)
        2'b00: begin anode = 4'b1110; dp = 1'b1; end //rightmost ssd
        2'b01: begin anode = 4'b1101; dp = 1'b1; end
        2'b10: begin anode = 4'b1011; dp = 1'b0; end
        2'b11: begin anode = 4'b0111; dp = 1'b1; end //leftmost ssd
        default: begin anode = 4'b1111; dp = 1'b1; end
        endcase
    end
endmodule
