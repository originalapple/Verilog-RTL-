//기본 워드 크기를 텍스트 매크로로 정의
//코드 내에서 'WORD_SIZE로 사용.
`define WORD_SIZE 32

//별명을 정의. 's가 나타날 때마다 $stop으로 대치.
`define s $stop

//자주사용되는 텍스트 문자열을 정의.
`define WORD_REG reg [31:0]

//예제 3-8 include 지시어
`include header.v
