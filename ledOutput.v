`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2019 09:48:52 AM
// Design Name: 
// Module Name: ledOutput
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



module ledOutput(
    
    q,
   
    display,
    
    );
    input [2:0]q;
    
    output reg [6:0] display;
   
    
        
always @(q)
begin
case(q)
4'b000:display=7'b1111110;
4'b001:display=7'b0110000;
4'b010:display=7'b1101101;
4'b011:display=7'b1111001;
4'b100:display=7'b0110011;
3'b101:display=7'b1011011;
endcase

end
endmodule
