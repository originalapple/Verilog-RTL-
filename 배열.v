integer count [7:0]; //8count 변수의 배열
reg bool [31:0]; // 32 1-비트 boolean 레지스터 변수의 배열.
time chk_point[1:100]; //100 time chk_point 변수의 배열.
reg [4:0] port_id[0:7]; //8port_id의 배열 각 port_id는 5-비트의 폭
integer matrix[4:0][0:255]; //정수형 이차원 배열
reg [63:0] array_4d [15:0][7:0][7:0][255:0]; //사차원 배열
wire [7:0] w_array2 [5:0]; //8-비트 벡터 와이어 배열 선언
wire w_array1 [7:0][5:0]; //싱글 비트 와이어의 배열 선언.

count[5] = 0; //count 변수 배열의 5번째 원소 리셋.
chk_point[100] = 0; //check point 값이 100번째 시간 리셋
port_id[3] = 0; //port_id 배열의 세번째 원소 리셋. 5-비트 값

matrix[1][0] = 33559; //[1][0] 인덱스의 원소 값을 33559로 지정.
array_4d[0][0][0][0][15:0] = 0; //[0][0][0][0] 색인에 의해 접근되어지는
                                //레지스터의 15:0 비트들을 클리어
