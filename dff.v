`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2019 04:41:23 PM
// Design Name: 
// Module Name: dff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff(ns, clk, clrn, q );
    input [2:0] ns;
    input clk, clrn;
    output reg [2:0] q;
    
    always @(posedge clk) begin
        if (clrn==0) begin  
            q=3'b000;
            end
        else begin
            q=ns;
            end
    end
endmodule

