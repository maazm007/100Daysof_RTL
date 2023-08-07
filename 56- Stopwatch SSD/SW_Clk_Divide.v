`timescale 1ns / 1ps

module SW_Clk_Divide(clk, clk_div);
    input clk;
    output reg clk_div;
    integer count = 0;
    
    always@(posedge clk)
    begin
        if(count == 499999) //to generate 100Hz Signal ie T = 0.01s
            count <= 1'b0;
        else
            count <= count + 1'b1;
    end
    
    always@(posedge clk)
    begin
        if(count == 499999)
            clk_div <= ~clk_div;
        else
            clk_div <= clk_div;
    end
endmodule
