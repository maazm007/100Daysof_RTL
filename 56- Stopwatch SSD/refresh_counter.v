`timescale 1ns / 1ps

module refresh_counter(
    input refresh_clk,
    output reg [1:0] refresh_count = 0
    );
    
    always@(posedge refresh_clk)
    begin
        refresh_count <= refresh_count + 1'b1;
    end
endmodule
