`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module ram(
        input en,
        input ck,
        input [10:0] addr_r,
        input [10:0] addr_w,
        input [7:0] data_w,
        output [7:0] data_r
    );
    
    reg [7:0] memorie [0:2047];
    
    always@(posedge ck)
    begin
        if(en==1)
            begin
            memorie[addr_w]<=data_w;
            end
    end
    
    assign data_r=memorie[addr_r];
    
endmodule
