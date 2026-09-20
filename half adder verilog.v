
module HA(o_sum,o_cy,i_in1,i_in2);
    // signals declarations

  input i_in1;
  input i_in2;
  output o_sum;
  output o_cy;
  
  // these assignment statements assign inputs i_in1 and i_in2 to output sum as xor,
// while cy is assigned as i_in1 and-ed with i_in2

  assign o_sum = i_in1 ^ i_in2;
  assign o_cy = i_in1 & i_in2;
  
endmodule
  
  