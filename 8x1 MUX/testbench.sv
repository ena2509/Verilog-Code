module testbench;

    logic a,b,c,d,e,f,g,h;
    logic [2:0] s;
    logic y;
    logic expected;
    int i;

    mux8x1 dut(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .s(s), .y(y));

    always_comb begin
        case(s)
            3'b000: expected = a;
            3'b001: expected = b;
            3'b010: expected = c;
            3'b011: expected = d;
            3'b100: expected = e;
            3'b101: expected = f;
            3'b110: expected = g;
            3'b111: expected = h;
        endcase
    end

    initial begin
        for(i=0;i<1024;i++) begin
            {a,b,c,d,e,f,g,h,s}=i;
            #1;

            assert(y===expected)
                $display("PASS");
            else
                $error("FAIL: s=%b expected=%b got=%b",
                       s,expected,y);

            #9;
        end

        $finish;
    end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule