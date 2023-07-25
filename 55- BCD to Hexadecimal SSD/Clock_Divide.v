`timescale 1ns / 1ps

module Clock_Divide(
    input Clk,
    output reg Clk_Div);
    
    integer count = 0;
    always@(posedge Clk)
    begin
        if(count == 49999999)
            count <= 1'b0;
        else
            count <= count + 1'b1;
    end
    
    always@(posedge Clk)
    begin
        if(count == 49999999)
            Clk_Div <= ~Clk_Div;
        else
            Clk_Div <= Clk_Div;
    end
endmodule
