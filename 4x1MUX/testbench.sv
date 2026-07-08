// Code your testbench here
// or browse Examples
module testbench;
  reg a,b,c, d;
  reg [1:0]s; 
  //Since y is assigned inside an always block, it must be declared as a reg
  wire y;
  integer i;
  //instantiate DUT
  mux4x1 dut(.a(a), .b(b), .c(c), .d(d), .s(s), .y(y));
  //apply test vectors
  initial begin
    for (i = 0; i < 64; i = i + 1) begin
      {a, b,c,d,s} = i;
    #1;

      if (y !== (s[1] ? (s[0] ? d : c)
                 : (s[0] ? b : a)))
        $display("FAIL: a=%b b=%b c=%b d=%b s=%b y=%b", a, b, c,d,s,y);
    else
      $display("PASS: a=%b b=%b c=%b d=%b s=%b y=%b", a, b,c,d,s,y);

    #9;
  end
  $finish; 
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule