`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 11:40:43 PM
// Design Name: 
// Module Name: tb_FA
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


module tb_FA;
// Declare testbench signals
logic a, b, c_in;
logic c_out, s;
// Instantiate the andgate module
FA dut (
.a(a),
.b(b),
.c_in(c_in),
.c_out(c_out),
.s(s)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t c_in\t c_out s");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; c_in=0; #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 0; b = 0; c_in=1; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 0; b = 1; c_in=0; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 0; b = 1; c_in=1; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 1; b = 0; c_in=0; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 1; b = 0; c_in=1; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 1; b = 1; c_in=0; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
a = 1; b = 1; c_in=1; #10;
$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
// End simulation
$finish;
end
endmodule
