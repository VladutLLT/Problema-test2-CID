`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module substract(
        input [10:0] in,
        output [10:0] out
    );
    
    assign out=in-1;
endmodule
