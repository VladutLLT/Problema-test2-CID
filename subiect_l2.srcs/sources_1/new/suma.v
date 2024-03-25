`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module suma(
        input [7:0] in0,
        input [7:0] in1,
        output [7:0] out 
    );
    assign out=in0+in1;
endmodule
