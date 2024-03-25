`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module reg_8b(
      input en,
      input ck,
      input reset,
      input [7:0] in,
      output reg [7:0] out
    );
    
    always@(posedge ck)
    begin
    if(reset==1)
        begin
        out<=0;
        end
    else
        if(en==1)
            begin
            out<=in;
            end
        else
            begin
            out<=out;
            end

     end
    
    
    
 
endmodule
