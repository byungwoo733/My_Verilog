`timescale 1ns/1ps
module alu_tb;
  //inputs
  reg [7:0] A,B;
  reg [3:0] ALU_Sel;
  //outputs
  wire [7:0] ALU_Out;
  wire CarryOut;
  integer i;
  alu test_unit(A,B,ALU_Out,CarryOut);
  initial begin
    A = 8'h05;
    B = 8'h04;
    ALU_sel = 4'h0
    for(i=0; i<4; i++)
      begin
        ALU_Sel = ALU_Sel + 8'h01;
        #10;
      end
  end
endmodule
    