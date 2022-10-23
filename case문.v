// case문에서 키워드 case, endcase, default

case(수식)
    선택1:문장1;
    선택2:문장2;
    선택3:문장3;
    default : 기본 문장;
endcase
//ALU 제어 신호에 의해 문장을 수행한다.
reg [1:0] alu_control;
...
...
case (alu_control)
    2'd0 : y = x + z;
    2'd1 : y = x - z;
    2'd2 : y = x * z;
    default : $display("Invalid ALU control signal")
endcase
//case문은 n:1 멀티플렉서 처럼 동작한다. 8:1 16:1 멀티플렉서 쉽게 쌉가능
//case문으로 구현한 4:1 멀티플레서 예제 7-19

module mux4_to_1 (
    out,
    i0,i1,i2,i3,
    s0,s1
);
    output out;
    input i0 ,i1, i2, i3;
    input s0, s1;
    reg out;

    always @(s1 or s0 or i0 or i1 or i2 or i3)
    case ({s1, s0}) //제어 신호의 연결을 기초로 한 스위치
        2'd0 : out = i0;
        2'd1 : out = i1;
        2'd2 : out = i2;
        2'd3 : out = i3;
        default : $display("Invalid control signals");
    endcase
    
endmodule

//case문의 수식의 0,1,x,z 값과 비교를 하고 비트가 일치하는 것을 선택한다.
//만약 수식과 선택의 비트 폭이 일치하지 않으면, 수식과 선택된 것으 폭 중 더 큰 비트폭에 맞추어 
// 나머지를 0으로 채운다. 예제 7-20에서 선택신호에 
//x,z값이 있어도 최종결과를 정확히 지정하는 1:4 멀티플렉서 정의
//예제 7-20

module demultiplexer1_to_4 (
    out0,out1,out2,out3,in,s1,s0
);
    output out0, out1, out2, out3;
    reg out0, out1, out2, out3;
    input in;
    intput s1, s0;

    always @(s1 or s0 or in)
    case ({s1,s0})
        2'b00 : begin out0 = in; out1 = 1'bz; out2 = 1'bz; out3 = 1'bz; end
        2'b01 : begin out0 = 1'bz; out1 = in; out2 = 1'bz; out3 = 1'bz; end
        2'b10 : begin out0 = 1'bz; out1 = 1'bz; out2 = in; out3 = 1'bz; end
        2'b11 : begin out0 = 1'bz; out1 = 1'bz; out2 = 1'bz; out3 = in; end
    //알 수 없는 신호가 선택됐을 때의 계산이다. 만약 어떤 선택신호가 x이면 출력은 x
    //만약 어떤 선택 신호가 z이면 출력은 z이다.
    //만약 하나가 x이고 다른것이 z이면 x쪽이 우선순위가 높다.
        2'bx0, 2'bx1, 2'bxz, 2'bxx, 2'b0x, 2'b1x, 2'bzx :
        begin
            out0 = 1'bx; out1 = 1'bx; out2 = 1'bx; out3 = 1'bx;
        end
    2'bz0, 2'bz1, 2'bzz, 2'b0z, 2'b1z :
        begin
            out0 = 1'bz; out1 = 1'bz; out2 = 1'bz; out3 = 1'bz;
        end
    default : $display("Unspecification control signals");
    endcase

endmodule
 