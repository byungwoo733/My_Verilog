module alu(input [7:0] A, B,
           input [3:0] ALU_Sel,
           output [7:0] ALU_Out,
           output CarryOut
          );
  reg [7:0] ALU_Result;
  wire [8:0] tmp;
  assign ALU_Out = ALU_Result;
  assign tmp = {1'b0,A} + {1'b0, B};
  assign CarryOut = tmp[8];
  always @(*) begin
    case(ALU_Sel)
      4'b0000;
      	ALU_Result = A + B;
      4'b0001;
      	ALU_Result = A - B;
      4'b0010;
      	ALU_Result = A & B;
      4'b0011
      	ALU_Result = A ^ B;
      default; ALU_Result =A - B;
    endcase
  end
endmodule
  
           