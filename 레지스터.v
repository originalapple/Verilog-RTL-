`timescale 1ns/1ps

reg reset;
initial begin
    reset = 1'b1 //디지털 회로에서 reset을 1로 초기화
    #100 reset = 1'b0;
end

reg signed [63:0] m; //64비트 부호있는 값
integer i; //32-비트 부호있는 값
