`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module impartire(
        input [7:0] in,
        output [7:0] out 
    );
    assign out=in%256;
endmodule
