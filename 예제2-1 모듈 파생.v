//리플 캐리 카운터라는 최상위 블록을 정의한다.
//이것은 4개의 T-F/F을 파생한다.

module ripple_carry_counter(q, clk, reset);
output [3:0] q;
input clk, reset;

//4개의 T_FF 모듈의 인스턴스가 생성된다. 각 인스턴스는 고유한 이름을 가진다.
//각 인스턴스는 T_FF 모듈의 복사본이다.
T_FF tff0 (q[0], clk, reset);
T_FF tff1 (q[1], clk, reset);
T_FF tff2 (q[2], clk, reset);
T_FF tff3 (q[3], clk, reset);

endmodule

//T_FF 모듈을 정의한다. 이것은 하나의 D_FF에서 파생된다. D_FF 모듈은 정의되었다고 가정
module T_FF (q, clk, reset);
output q;
input clk, reset;
wire d;

D_FF dff0(q, d, clk, reset);
not n1 (d, q);
    
endmodule