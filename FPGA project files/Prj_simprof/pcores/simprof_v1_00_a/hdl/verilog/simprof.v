`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: International Institute of Information Technology - Bangalore			
// Engineer: Nadimpalli Pavan Kumar
// 
// Create Date:    15:08:53 08/24/2015 
// Design Name:    A simple profiler
// Module Name:    simprof 
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
module simprof(
    input clk, 
	 input reset,
    input [0:31] P_Trace_PC,
    input P_Trace_Valid_Instr,
    output [31:0] P_Count
    );

//reg [31:0] P_Count;
reg cnt_enable;

counter counter_1 (.clk(clk),.enable(cnt_enable),.reset(reset),.count(P_Count));

always @ (posedge clk)
begin
if((P_Trace_PC >= 32'h000001c8 && P_Trace_PC <= 32'h000001ec) && (P_Trace_Valid_Instr == 1'b1))
cnt_enable <= 1'b1;
else
cnt_enable <= 1'b0;
end




endmodule
