// mux_2_1 using case TB

module multiplexer_2_1_case_tb();

// ---------- Port Declaration ---------- \\
  
  reg[1:0]i;
  reg s;
  wire f;

// ---------- Instantiation from RTL ---------- \\
  
  multiplexer_2_1_case dut(.i(i),.s(s),.f(f));

// ---------- Implementation ---------- \\

  initial begin
      
      $monitor($time,"| s = %0b | i = %0b | f = %b",i,s,f);

      i = 2'b00; s = 1'b0;
      #5;
      i = 2'b01; s = 1'b1;
      #5;
      i = 2'b10; s = 1'b0;
      #5;
      i = 2'b11; s = 1'b1;
      #5;
      $finish;
  end
endmodule

