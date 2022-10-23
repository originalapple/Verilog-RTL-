reg x,y,z;
reg [15:0] reg_a,reg_b;
integer count;

initial
begin
    x=0; y=1; z=1; //스칼라 할당
    count=0; //정수 변수으 할당
    reg_a = 16'b0; reg_b = reg_a //벡터의 초기화

    reg_a[2] <= #15 1'b1; //지연을 가지고 있는 비트선택 할당.
    reg_b[15:13] <= #10 {x,y,z}; //벡터의 부분적 선택에 연결의 결과를 할당
    count <= count +1; //정수의 할당(증가)
end


//논블락킹 할당 응용 -> 동시에 할당
always @(posedge clk)
begin
    reg1 <= #1 in1;
    reg2 <= @(negedge clk) in2^in3;
    reg3 <= #1 reg1; //reg1의 이전 값
end
