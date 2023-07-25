module refreshCounter(
    input refresh_clock,
    output reg [1:0] refresh_count = 0);

always @(posedge refresh_clock)
begin
    refresh_count <= refresh_count + 1'b1;
end
endmodule