// Code your testbench here
// or browse Examples
module testbench;
  reg a,b,s; 
  wire y;
  //instantiate DUT
  mux2x1 dut(.a(a), .b(b), .s(s), .y(y));
  //apply test vectors
  initial begin
    $monitor("Time=%0t a=%b b=%b s=%b y=%b",
          $time, a, b, s, y);
    a = 0; b = 0; s = 0;#10;
    a = 0; b = 0; s = 1;#10;
    a = 0; b = 1; s = 0;#10;   
    a = 0; b = 1; s = 1;#10;
    a = 1; b = 0; s = 0;#10;
    a = 1; b = 0; s = 1;#10;
    a = 1; b = 1; s = 0;#10;
    a = 1; b = 1; s = 1;#10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule