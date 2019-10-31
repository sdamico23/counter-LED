`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Steve D'Amico
// 
// Create Date: 09/20/2019 04:45:20 PM
// Design Name: 
// Module Name: upDownCounter
// Project Name: Lab1
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


module upDownCounter(
    
   
    q,
    upDown, //one for up and zero for down
    ns
    );
    input  upDown;
    input [2:0] q;
    output reg [2:0] ns;
    //reg[2:0] cnt = 0;

    always @(*)
    begin
        
       
//            if(upDown == 1) 
//                if (cnt == 5)
//                    cnt <= 0;
//                else
                    if (upDown == 1)
                        if (q ==5)
                            ns <= 0;
                        else
                            ns <= q +1;  //increment in up mode
                   else 
                        if (q == 0)
                            ns <=5;
                        else
                            ns <=q-1; //decrement in down mode
      end
      
      
endmodule
