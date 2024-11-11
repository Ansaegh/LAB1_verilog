`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 11:13:05 PM
// Design Name: 
// Module Name: HA
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


module HA(
input logic a,
input logic b,
output logic c,
output logic s
);
logic w1, w2;
andgate G1( .f(c) , .a(a) , .b(b) );
xorgate G2( .f(s) , .a(a) , .b(b) );
endmodule
