`timescale 1ns / 1ps

module top_SW(
    input button,
    input reset,
    input clk,
    output [6:0] cathode,
    output [3:0] anode,
    output dp);
    
    wire [1:0] refresh_signal;
    wire main_clk, refresh_clk;
    wire [3:0] milli_zero, milli_one, sec_zero, sec_one;
    wire [3:0] final;
    wire [7:0] mid_milli, mid_sec;
    SW_Clk_Divide main(clk, main_clk);
    SW_Refresh_Clk Refresh(clk, refresh_clk);
    refresh_counter counter(refresh_clk, refresh_signal);
    SW Stopwatch(main_clk, reset, button, mid_milli, mid_sec);
    assign milli_zero = mid_milli[3:0];
    assign milli_one = mid_milli[7:4];
    assign sec_zero = mid_sec[3:0];
    assign sec_one = mid_sec[7:4];
    main_controller Boss(milli_zero, milli_one, sec_zero, sec_one, final, refresh_signal);
    cathode_controller c(final, cathode);
    anode_controller anode_signal(refresh_signal, anode, dp);
endmodule
