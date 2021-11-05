`timescale 1ns/1ps
module encoder8to3_tb;
  reg [7:0]y;
  wire [2:0]a;
   encoder8to3 ins1(y,a);
  initial
begin
  $dumpfile("encoder8to3.vcd");
   $dumpvars(1);
end
initial
begin
    y=8'b00000001;
#50 y=8'b00000010;
#50 y=8'b00000100;
#50 y=8'b00001000;
#50 y=8'b00010000;
#50 y=8'b00100000;
#50 y=8'b01000000;
#50 y=8'b10000000;
end
initial
  $monitor("simtime=%0g, y=%d, a[2]=%b, a[1]=%b, a[0]=%b", $time, y, a[2], a[1], a[0]);
endmodule