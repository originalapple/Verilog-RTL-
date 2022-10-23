//case문에는 두 가지 변형이 있다. 그것들은 키워드 casex와 casez로 나타낸다.
//casez는 case 선택 또는 case 수식의 모든 z값을 don't care로 다룬다.
//z를 가지는 모든 비트의 위치는 그 위치에 ?로 나타낼 수도 있다.
//casex는 case선택 또는 case 수식의 모든 x와 z값을 don't care로 다룬다.
//예제 7-21

reg [3:0] encoding;
integer state;

casex (encoding) //논리값 x는 don't care 비트를 의미한다.
    4'b1xxx : next_state = 3;
    4'bx1xx : next_state = 2;
    4'bxx1x : next_state = 1;
    4'bxxx1 : next_state = 0;
    default : next_state = 0; 
endcase
