`timescale 1ns / 1ps
module SSD_Top(input [3:0] switch,
output [6:0] led,
output [7:0] anode, //which ssd out of 8 will be used
output dp);
assign anode = 8'b11111110; //only first ssd will be enable
assign dp = 1;
ssd D1(.x(switch), .a_to_g(led));
endmodule

