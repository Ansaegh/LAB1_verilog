`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 11:16:23 PM
// Design Name: 
// Module Name: tb_HA
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


module tb_HA;
// Declare testbench signals
logic a, b;
logic c, s;
// Instantiate the andgate module
HA dut (
.a(a),
.b(b),
.c(c),
.s(s)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t c s");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b %b", $time, a, b, c, s);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b %b", $time, a, b, c, s);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b %b", $time, a, b, c, s);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b %b", $time, a, b, c, s);
// End simulation
$finish;
end
endmodule
