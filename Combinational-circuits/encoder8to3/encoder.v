module encoder8to3(y,a);
  input [7:0]y;
  output reg [2:0]a;
  always@*
  case(y)
  8'b00000001:begin a[2]=1'b0; a[1]=1'b0; a[0]=1'b0; end
  8'b00000010:begin a[2]=1'b0; a[1]=1'b0; a[0]=1'b1; end
  8'b00000100:begin a[2]=1'b0; a[1]=1'b1; a[0]=1'b0; end
  8'b00001000:begin a[2]=1'b0; a[1]=1'b1; a[0]=1'b1; end
  8'b00010000:begin a[2]=1'b1; a[1]=1'b0; a[0]=1'b0; end
  8'b00100000:begin a[2]=1'b1; a[1]=1'b0; a[0]=1'b1; end
  8'b01000000:begin a[2]=1'b1; a[1]=1'b1; a[0]=1'b0; end
  8'b10000000:begin a[2]=1'b1; a[1]=1'b1; a[0]=1'b1; end
  endcase
endmodule