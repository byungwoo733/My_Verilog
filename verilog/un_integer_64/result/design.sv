// Code your design here
// 64-bit CPU Data Width
module un_integer_64(
    input  [63:0] in1,
    input  [63:0] in2,
    output reg [63:0] out
);
  always @* begin
    out <= $realtobits($bitstoreal(in1) + $bitstoreal(in2));
  end
endmodule

// 512M-bit SDRAM
module sdram (
  input [15:0] in1,
  input [15:0] in2,
  input CLOCK in3,
  output [15:0] DRAM_ADDRESS;
  output [15:0] DRAM_CONTROLLER;
);
  always@ begin
    
  end
endmodule