// Code your design here
module mux2x1(input a,b,s,output y);
  assign y= (s==0)? a:b;
endmodule