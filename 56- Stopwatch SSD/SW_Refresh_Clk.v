`timescale 1ns / 1ps

module SW_Refresh_Clk(
    input Clk,
    output reg Clk_Div);
    
    integer count = 0;
    always@(posedge Clk)
    begin
        if(count == 4999) //to generate 10KHz for refresh counter
            count <= 1'b0;
        else
            count <= count + 1'b1;
    end
    
    always@(posedge Clk)
    begin
        if(count == 4999)
            Clk_Div <= ~Clk_Div;
        else
            Clk_Div <= Clk_Div;
    end
endmodule
