`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:23 09/07/2015 
// Design Name: 
// Module Name:    decode 
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
module decode (
input clk,
input [0:31] instr,
input insvalid,
output ret,
output call
) ;

wire call ;
wire ret;

assign call = insvalid & instr [0:5] == 6 'b101110 & (instr [11:15] == 5'b11100| instr [11:15] == 5'b10100);
assign ret = insvalid &  instr[0:10] == 11'b10110110000 ; 




endmodule