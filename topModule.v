`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2019 04:43:04 PM
// Design Name: 
// Module Name: topModule
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


module topModule(
    clk,
    clrn,
    upDown,
    q,
    display
     );
input clrn,upDown,clk;
output [2:0] q;
output [6:0] display;


wire [2:0] nextState;
//wire [2:0] currentState;


dff df(.ns(nextState),.clk(clk), .clrn(clrn), .q(q) );
ledOutput lo(.q(q), .display(display));
upDownCounter ud(.ns(nextState), .q(q), .upDown(upDown));


endmodule

