module HA(o_sum,0_cy,i_in1,i_in2);
  
  input i_in1;
  input i_in2;
  output o_sum;
  output o_cy;
  
  assign sum = i_in1 ^ i_in2;
  assign cy = i_in1 & i_in2;
  
endmodule
  