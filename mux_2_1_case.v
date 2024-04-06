// mux_2_1 using case

module multiplexer_2_1_case(s,i,f);

// ---------- Port Declaration ---------- \\
 
  input [1:0]i; // two input i0,i1
  input s;      // select line as input
  output reg f;     // output

// ---------- Implementation ---------- \\
  
  always@(*)
  begin
      case(s)
          1'b0 : f=i;  // when input of select line 0 then i[0] as output
          1'b1 : f=i;  // when input of select line 1 then i[1] as output
      endcase
  end
endmodule
