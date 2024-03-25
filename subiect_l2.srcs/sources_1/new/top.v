`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module top(
        input ck,
        input en,
        input reset,
        output [7:0] sir,
        output tester
    );
    
    wire [7:0] out_reg1, out_reg2, out_compb, out_comps;
    wire [10:0] out_count, out_sub;
    
    reg_8b reg1(
            .ck(ck),
            .en(en),
            .reset(reset),
            .in(out_compb),
            .out(out_reg1)
            );
            
    reg_8b reg2(
            .ck(ck),
            .en(en),
            .reset(reset),
            .in(out_reg1),
            .out(out_reg2)
            );
            
    counter counter(
            .ck(ck),
            .en(en),
            .reset(reset),
            .out(out_count)
            );
            
    substract substract(
            .in(out_count),
            .out(out_sub)
            );
            
    ram ram(
            .ck(ck),
            .en(en),
            .addr_r(out_sub),
            .addr_w(out_count),
            .data_w(out_compb),
            .data_r(sir)
            );
            
    compute_behav comp_b(
            .in0(out_reg1),
            .in1(out_reg2),
            .out(out_compb)
            );
            
    compute_struct comp_s(
            .in0(out_reg1),
            .in1(out_reg2),
            .out(out_comps)
            );
            
    comp_eq comp_eq(
            .in0(out_comps),
            .in1(out_compb),
            .out(tester)
            );
    
endmodule
