`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module simulare();

reg en, reset, ck;
wire [7:0] sir;
wire tester;

top lool(
        .en(en),
        .reset(reset),
        .ck(ck),
        .sir(sir),
        .tester(tester)
        );

initial begin
ck=0;
forever #20 ck=~ck;
end

initial begin
en=0;
reset=0;
#30 reset=1;
#50  reset=0;
en=1;
#2000 $stop();
end


endmodule
