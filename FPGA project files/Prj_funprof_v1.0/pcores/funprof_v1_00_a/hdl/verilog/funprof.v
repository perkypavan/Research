`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:56 09/07/2015 
// Design Name: 
// Module Name:    funprof 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module funprof(
input clk,
input reset,
input [0:31] P_Trace_Instruction,
input P_Trace_Valid_Instr,
output [31:0] P_Count
    );

reg cnt_enable;

wire ret;
wire call;

always@(posedge clk)
begin
if(call)
cnt_enable <= 1'b1;
else if(ret)
cnt_enable <= 1'b0;
end


counter counter_1 (.clk(clk),.enable(cnt_enable),.reset(reset),.count(P_Count));

decode decode_1 (.clk(clk),.instr(P_Trace_Instruction),.insvalid(P_Trace_Valid_Instr),.ret(ret),.call(call));

endmodule
