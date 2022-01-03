// Code your design here
module gates ( input a, b,
               output c, d, e);
    and (c, a, b);
    or  (d, a, b);
    xor (e, a, b);
endmodule