`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 05:02:31 PM
// Design Name: 
// Module Name: multiple_even_up_counter
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


module multiple_even_up_counter(
input clk,rst,enb,
input [1:0] mode,
input up_downbar,
output reg mod2,
output reg [1:0] mod4,
output reg [2:0] mod8,
output reg [3:0] mod16
    );
/*    always@(posedge clk)
    begin
    if(rst) 
    {mod2,mod4,mod8,mod16} <= 0;
    
    case(mode)
    
    2'b00 : if(enb)
            mod2 <= mod2 + 1'b1;
            else if(enb == 0)
            mod2 <= mod2;
    
    2'b01 : if(enb)
            mod4 <= mod4 + 1'b1;
            else if(enb == 0)
            mod4 <= mod4;

    2'b10 : if(enb)
            mod8 <= mod8 + 1'b1;
            else if(enb == 0)
            mod8 <= mod8;

    2'b11 : if(enb)
            mod16 <= mod16 + 1'b1;
            else if(enb == 0)
            mod16 <= mod16;

endcase
end   */
    
    reg [3:0] counter_internal;
    
    always@(posedge clk)
    begin
    if(rst)
    counter_internal <= 0;
    else if(enb == 1 && up_downbar)
    counter_internal <= counter_internal + 1'b1;
    else if(enb && up_downbar == 0)
    counter_internal <= counter_internal - 1'b1;
    else 
    counter_internal <= counter_internal;
    
    end
    
    always@(posedge clk) begin
    
    case(mode)
    
    2'b00 : begin
            mod2 <= counter_internal[0];
            end
    2'b01 : begin
            mod4 <= counter_internal[1:0];
            end
    2'b10 : begin
            mod8 <= counter_internal[2:0];
            end
    2'b11 : begin
    mod16 <= counter_internal[3:0]; 
    end
    default : begin
              mod2 <= 0;
              mod4 <= 0;
              mod8 <= 0;
              mod16 <= 0;
    end
    
    
    endcase
    end                        
    
    
endmodule
