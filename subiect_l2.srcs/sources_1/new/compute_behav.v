`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module compute_behav(
        input [7:0] in0,
        input [7:0] in1,
        output reg [7:0] out
    );
    
    always@(*)
    begin
    if(in0%2==0)
        begin
        out = (2*in1 + in0 + 3)%256;
        end
    else
        begin
        out = (2*in1 + in0 - 1)%256;
        end
    end
endmodule
