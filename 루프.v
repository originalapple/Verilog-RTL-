//Verilog에는 4가지 형식의 루프가 있다.
//while for repeat forever
//모든 루프문장은 initial 또는 always 블록안에 위치한다
//while 루프
//예제 7-22 while 루프
//보기 1: 0에서 부터 127까지 count를 증가시킨다. count 128에 종료
//count 변수를 출력한다.
integer count;

initial
begin
    count = 0;
    while (count < 128) begin
        $display("Count = %d", count);
        count = count + 1;
    end
end
//보기2 : 플래그 (벡터 변수)에서 처음으로 1의 값을 갖는 비트를 찾는다.
'define TRUE 1'b1';
'define FALSE 1'b0';
reg [15:0] flag;
integer i; //카운드하기 위한 정수
reg continue;

initial
begin
    flag = 16'b 0010_0000_0000_0000;
    i = 0;
    continue = 'TRUE;

    while ((i<16) && continue) //연산자를 이용한 여러개의 조건
    begin 
        if (flag[i])
        begin
            $display("Encountered a TRUE bit at element number %d", i);
            continue = 'FALSE;
        end
    i = i + 1;
    end
end

//FOR 루프
//for 루프는 3가지부분으로 나눈다.
//초기화상태, 종료 상태가 참인지 판단, 제어 변수의 값을 바꾸기 위한 절차적 할당
//예제7-22
integer count;

initial 
    for (count=0;count<128;cuont=count+1)
        $display("Count = %d",count);

//for루프는 배열이나 메모리를 초기화하는데 쓰일 수도 있다.
'define MAX_STATE 32
integer state [0: 'MAX_STATE-1]; //원소 0:31을 가진 정수형 배열 상태
integer i;

initial 
begin
    for(i = 0 ; i < 32 ; i + 2) //모든 짝수 위치에 0으로 초기화
        state[i] = 0;
    for(i = 1; i < 32; i + 2) //모든 홀수 위치에 1로 초기화
        state[i] = 1;
end
//사실 설계할 때 for문은 잘 안씀 시뮬돌릴때도 잘 안쓰나...?
//Repeat 루프
//예제7-24
//보기1: 0~127까지 증가시키고 출력한다.
integer count;

initial 
begin
    count = 0;
    repeat(128)
    begin
        $display("Count = %d",count);
        count = count + 1;
    end
end
//보기2: 데이터 버퍼 모듈의 예
//데이터 시작 신호를 받은 후
//다음 8사이클 동안 데이터를 읽는다.

module data_buffer(data_start, data, clock);

parameter cycles = 8;
input data_start;
input [15:0] data;
input clock;

reg [15:0] buffer [0:7];
integer i;

always @(posedge clock) 
begin
    if(data_start) // 데이터 신호가 참이다.
    begin
        i = 0;
        repeat(cycles) //다음 8클럭 사이클의 엣지에서 데이터를 저장
        begin
            @(posedge clock) buffer[i] = data;//데이터를 래치하기위해 다음엣지
            i = i + 1;                        //기다린다
        end                                   
    end
end
endmodule
//Forever 루프 : 
//예제7-25
//예1 클럭생성 <- 시뮬레이션 때 많이 씀
//always 블럭 대신에 forever 루프를 사용
reg clock;

initial
begin
    clock = 1'b0;
    forever #10 clock = ~clock; //20단위 주기를 가진 클럭
end
//예2: 매 클럭의 상승 엣지에서 두 개의 레지스터가 동기화
reg clock;
reg x, y;

initial
    forever @(posedge clock) x = y;
