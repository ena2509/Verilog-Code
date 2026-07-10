// Code your testbench here
// or browse Examples
module testbench;
  reg i0,i1,i2,i3,i4,i5,i6,i7;
  wire a0,a1,a2;
  integer i;
  logic [2:0] expected;
  encoder8x3 dut (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6), .i7(i7),.a0(a0),.a1(a1),.a2(a2));
initial begin
  
 for (i = 0; i < 8; i++) begin
    {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b1 << i;
    expected = i[2:0];
    #10;

   assert ({a2,a1,a0} === expected)
        $display("PASS: Expected=%b, Got=%b", expected, {a2,a1,a0});
    else
        $error("FAIL: Expected=%b, Got=%b", expected, {a2,a1,a0});
end
  end
    
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule