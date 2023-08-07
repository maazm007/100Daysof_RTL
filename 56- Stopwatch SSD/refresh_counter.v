`timescale 1ns / 1ps

module refresh_counter(
    input refresh_clk,
    output reg [1:0] refresh_count = 0
    );
    
    always@(posedge refresh_clk)
    //if(refresh_count <= 3'b101)
    begin
        refresh_count <= refresh_count + 1'b1;
    end
    //else
        //refresh_count <= 2'b0;
endmodule
