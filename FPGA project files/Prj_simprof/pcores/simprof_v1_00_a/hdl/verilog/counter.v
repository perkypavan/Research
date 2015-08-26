`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:08 08/24/2015 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    input enable,
    input reset,
    output reg [31:0] count
    );

//reg [31:0] count;

always @ (posedge clk)
begin
if(reset)
count <= 32'b0;
else if(enable)
count <= count + 1;
end

endmodule
