// Code your testbench here
// or browse Examples
module testbench;
  reg a,b,s; 
  wire y;
  integer i;
  //instantiate DUT
  mux2x1 dut(.a(a), .b(b), .s(s), .y(y));
  //apply test vectors
  initial begin
  for (i = 0; i < 8; i = i + 1) begin
    {a, b, s} = i;
    #1;

    if (y !== (s ? b : a))
        $display("FAIL: a=%b b=%b s=%b y=%b", a, b, s, y);
    else
        $display("PASS: a=%b b=%b s=%b y=%b", a, b, s, y);

    #9;
  end
  $finish; 
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule