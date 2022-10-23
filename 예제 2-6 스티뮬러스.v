module stimulus;

reg clk;
reg reset;
wire [3:0] q;

//설계블록의 파생
ripple_carry_counter r1 (q, clk, reset);

//설계 블록에서 나오는 신호를 조절 주기=10
initial 
    clk = 1'b0;
always
    #5 clk = ~clk; //매 5단위 시간마다 clk값을 바꾼다.
//설계 블록에서 나오는 reset 신호를 조절
// reset 신호는 0에서 20 그리고 200에서 220 까지 참
initial begin
    
    reset = 1'b1;
    #15 reset = 1'b0;
    #180 reset = 1'b1;
    #10 reset = 1'b0;
    #20 $finish; //시뮬레이션 끝
end
endmodule
