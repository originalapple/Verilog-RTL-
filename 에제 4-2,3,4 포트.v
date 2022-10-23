module fulladd4 (sum, c_out, a,b,c_in); //포트리스트를 가진다
//포트 선언 시작 부분
output [3:0] usm;
output c_cout;

input [3:0] a,b;
input c_in;
//포트 선언 끝 부분
///...
//<모듈내용>
//...
endmodule

module Top; //시뮬레이션시 최상위 모듈은 포트 리스트가 없다 
endmodule

module DFF(q, d, clk, reset);
output q;
reg q; //출력포트 q는 값을 유지, 그러므로 reg로 선언
input d, clk, reset;
//<모듈 로직>
endmodule

//ANSI C 형식의 포트 선언 구문
module fulladd4 (output reg [3:0] sum, output reg c_out,
                input [3:0] a,b, //디폴트를 가진 선
                input c_in); //디폴트를 가진 선

endmodule