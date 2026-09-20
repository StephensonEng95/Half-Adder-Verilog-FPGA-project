// Code your testbench here
// or browse Examples

module tb_ha;
  // inputs and outputs declared as registers and wires in testing

  reg i_in1, i_in2;
  wire o_sum,o_cy;
  // instantiating half adder to match module

  HA HA1(o_sum,o_cy,i_in1,i_in2);
  initial
    begin
      $display(i_in1, i_in2, o_sum, o_cy);
      $monitor("Time=%0dns | Inputs: i_in1=%b, i_in2=%b | Outputs: o_sum=%b, o_cy=%b", $time, i_in1, i_in2, o_sum, o_cy);
               i_in1=0;i_in2=0;
               #5 i_in1=0; i_in2=1;
               #5 i_in1=1; i_in2=0;
               #5 i_in1=1; i_in2=1;
     end
   initial
     begin
       $dumpfile("dump.vcd");
       $dumpvars(0,tb_ha);
     end
endmodule
      
  

  
