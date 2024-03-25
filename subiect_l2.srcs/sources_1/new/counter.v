`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module counter(
        input ck,
        input reset,
        input en,
        output reg [10:0] out
    );
    
    always@(posedge ck)
    begin
        if(reset==1)
            begin
            out<=0;
            end
        else
            begin
                if(en==1)
                    begin
                    out<=out+1;
                    end
                else
                    begin
                    out<=out;
                    end                  
            end
    
    end
    
    
    
    
endmodule
