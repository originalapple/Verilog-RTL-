parameter port_id = 5; //상수 port_id를 정의
parameter cache_line_width = 256; //캐쉬 줄의 폭을 정의한 상수.
parameter signed [15:0] WIDTH; //파라미터 WIDTH에 대한 부호와 범위 고정

localparam state1 = 4'b0001,
           state2 = 4'b0010,
           state3 = 4'b0100,
           state4 = 4'b1000;

//this is the end functional or logical Synthesis Implementation.
//Physical Implementation, Physical Design, RTL ENGINEER
//문자열

reg [8*18:1] string_value; //18바이트의 폭을 갖는 변수 선언.
initial
    starting_value = "Hello Verilog World"; //변수에 문자열 저장.
