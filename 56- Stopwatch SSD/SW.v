`timescale 1ns / 1ps

module SW(
    input clk,
    input reset,
    input button,
    output reg [7:0] milli,
    output reg [7:0] sec
    );
    
    always@(posedge clk)
    begin
        if(!reset) //reset is On ie logic 0
        begin
            milli <= 8'b0;
            sec <= 8'b0;
        end
        else if(reset) //reset gets OFF means logic 1
        begin
            if(button) //Timer will start when pressed Start
            begin
            if((sec[7:4] == 4'b0101) && (sec[3:0] == 4'b1001) && (milli[7:4] == 4'b1001) && (milli[3:0] == 4'b1001)) //we have to count till sec[7:4] = 0101(5) and sec[3:0] = 1111(9) ie 59
                begin
                    sec <= 8'b0;
                    milli <= 8'b0;
                end
	else if((sec[3:0] == 4'b1001) && (milli[7:4] == 4'b1001) && (milli[3:0] == 4'b1001))
                begin
	    milli <= 8'b0;
	    sec[3:0] <= 4'b0;
                    sec[7:4] <= sec[7:4] + 4'b1;
                end
                else if((milli[7:4] == 4'b1001) && (milli[3:0] == 4'b1001)) //we have to count till milli[7:4] = 1001(9) and milli[3:0] = 1001(9) ie 99
                begin
                    milli[3:0] <= 4'b0;
	    milli[7:4] <= 4'b0;
	    sec[3:0] <= sec[3:0] + 4'b1;
                end
	else if(milli[3:0] == 4'b1001)
                begin
                    milli[3:0] <= 4'b0;
                    milli[7:4] <= milli[7:4] + 4'b1;
                end
                else
                    milli[3:0] <= milli[3:0] + 4'b1;
            end
            else //when we Stop the Stopwatch
            begin
                milli[7:4] <= milli[7:4];
                milli[3:0] <= milli[3:0];
                sec[7:4] <= sec[7:4];
                sec[3:0] <= sec[3:0];
            end
        end
    end
endmodule
