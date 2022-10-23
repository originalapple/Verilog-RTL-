integer counter; //counter로 사용되는 범용 변수.
initial 
    counter = -1; //counter에 음수 -1을 저장

real delta; //delta라는 실수를 정의.
initial begin
    delta = 4e10; //delta에 과학적 표기법으로 대입
    delta = 2.13; //delta에 2.13을 대입.
end
integer i; //정수 i를 정의
initial
    i = delta; //i는 2(2.13변환값)의 값을 갖는다.
