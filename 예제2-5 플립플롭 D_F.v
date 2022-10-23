module D_FF (
    output reg q,
    input wire d,
    input wire clk,
    input wire reset
);
    output q;
    input d, clk, reset;
    reg q;

    always @(posedge reset or negedge clk)
    if (reset)
        q <= 1'b0;
    else
        q <= d;
endmodule
