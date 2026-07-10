// Code your design here

//assuming only one input is active
module encoder8x3 ( input i0,i1,i2,i3,i4,i5,i6,i7, output a0,a1,a2); 
   assign a0=i1|i3|i5|i7;
   assign a1=i2|i3|i6|i7;
   assign a2=i4|i5|i6|i7;     
endmodule