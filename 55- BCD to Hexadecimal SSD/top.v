`timescale 1ns / 1ps
module top(
    input clk,
    input [3:0] switch0, switch1, switch2, switch3,
    output [3:0] Anode,
    output [6:0] Cathode,
    output dp);
    assign dp = 1'b1;
    wire refresh_counter_clk;
    wire counter_clk;
    wire [1:0] refresh_signal;
    wire [3:0] final_one_digit;
    Clock_Divide_SSD refresh_clk_generator(clk, refresh_counter_clk);
    refreshCounter Refresh_Counting_Clk(refresh_counter_clk, refresh_signal);
    anodeControl(refresh_signal, Anode);
    bcdControl(switch0, switch1, switch2, switch3, refresh_signal, final_one_digit);
    bcdToCathode BCDSSD(final_one_digit, Cathode);
endmodule
