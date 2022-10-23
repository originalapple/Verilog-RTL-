module Top;

//연결변수의 선언
reg [3:0] A,B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;
//fa_ordered라는 fulladd4의 파생
//신호가 위치에 의해 연결
fulladd4 fa_ordered(SUM, C_OUT, A, B, C_IN);
fulladd4 fa_byname(.c_out(C_OUT), .sum(SUM), .b(B), .c_in(C_IN),a(A));
endmodule

module fulladd4(sum, c_out, a, b, c_in);
output [3:0] sum;
output c_cout;
input [3:0] a,b;
input c_in;

endmodule
