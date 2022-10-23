wire a; //스칼라 넷 변수. 기본값
wire [7:0] bus; //8비트 변수
wire [31:0] busA,busB,busC; //32-bit 3개의 버스
reg clock;
reg [0:40] virtual_addr; //41bit 폭을 가진 벡터 레지스터

busA[7] //벡터busA의 7번 비트
bus[2:0] //벡터 bus의 3개의 하위 비트,
        // significant 비트는 범위지정에서 항상 왼쪽에 와야 되기 때문에
        //bus [0:2]로 사용하는 것은 허용되지 않는다. 
virtual_addr[0:1] //virtual_addr의 2개 상위 비트.

reg [255:0] data1; //리틀-엔디언(little-endian) 표기법
reg [0:255] data2; // 빅-엔디언(Big-endian) 표기법
reg [7:0] byte;
byte = data1[31-:8]; //starting bit = 31, width = 8, => data[31:24]와 같은 표기
byte = data1[24+:8]; //starting bit = 24, width = 8, => data[31:24]와 같은 표기
byte = data2[31-:8]; //starting bit = 31, width = 8, => data[24:31]와 같은 표기
byte = data2[24+:8]; //starting bit = 24, width = 8, => data[24:31]와 같은 표기

//시작 비트는 변할 수 있다. 폭은 상수값을 가진다.
//루프문을 이용하여 벡터들의 모든 바이트들을 
//선택하기 위해 가변 부분 선택가능

for (j=0; j<=31; j=j+1)
    byte = data1[(j*8)+:8]; //순서는 [7:0], [15:8], [23:16]...[255:248]
//벡터의 부분을 초기화할 수 있다.
data1[(byteNum*8)+:8] = 8'b0; //만약 byteNum = 1, 8비트 [15:8]를 클리어.
