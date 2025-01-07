`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 07:06:47 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1 (
  input [7:0] a,
  input [7:0] b,
  input sel,
  output reg [7:0] out
);

always @* begin
  if (sel == 1'b0) begin
    out = a; end 
  else begin
    out = b; end
end
endmodule
