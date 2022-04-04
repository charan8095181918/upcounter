`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:43 04/04/2022 
// Design Name: 
// Module Name:    up_counter 
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
module up_counter(input clk,input reset,output[3:0] counter);
reg[3:0] counter_up;
always @(posedge clk or posedge reset)
begin
	if(reset)
	  counter_up<=4'd0;
        else
          counter_up<=counter_up+4'd1;
        end
assign counter=counter_up;
endmodule