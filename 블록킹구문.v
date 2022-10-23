//블록킹 할당 문장은 순차적 블록에 열거된 순서대로 수행된다.
//블록킹 문장은 병렬처리 블록내의 문장이 실행되는 것을 허용한다. 
reg x,y,z;
reg [15:0] reg_a,reg_b;
integer count;

//모든 행위 수준 문장은 반드시 initial 또는 always블록 안에 있어야 한다.
initial
begin
    x=0; y=1; z=1; //스칼라 할당
    count=0; //정수 변수으 할당
    reg_a = 16'b0; reg_b = reg_a //벡터의 초기화

    #15 reg_a[2] = 1'b1; //지연을 가지고 있는 비트 선택 할당.
    #10 reg_b[15:13] = {x,y,z}; //백터의 부분적 선택에 연결의 결과를 할당.
    count = count + 1; //정수의 할당.(증가)
end
