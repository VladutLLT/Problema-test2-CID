`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module comp_eq(
        input [7:0] in0,
        input [7:0] in1,
        output reg out
    );
    
    always@(*)
    begin
    if(in0==in1)
        out=1;
    else
        out=0;
    end
    
endmodule
