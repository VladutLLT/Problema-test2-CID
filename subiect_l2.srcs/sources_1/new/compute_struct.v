`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module compute_struct(
        input [7:0] in0,
        input [7:0] in1,
        output [7:0] out
    );
    
    wire [7:0] rez_inmul, rez_suma;
    reg [7:0] parimpar;
    
    always@(*)
    begin
    if(in0%2==0)
    begin
        parimpar=in0+3;
    end
    else
        parimpar=in0-1;
    end
    
    inmultire inmultire(
            .in0(in1),
            .in1(2),
            .out(rez_inmul)
            );
            
    suma suma(
            .in0(rez_inmul),
            .in1(parimpar),
            .out(rez_suma)
            );            
    
    impartire impartire(
            .in(rez_suma),
            .out(out)
            );

endmodule
