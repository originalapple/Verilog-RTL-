//조건문의 형식1. else 문장이 없다.
//문장이 수행되거나 수행되지 않는다.
if(<수식>) true_statement;

//조건문의 형식2. 하나의 else문장이 있다
// true_statement 또는 false_statement 중 하나가 수행된다.
if (<수식>) true_statement;
else false_statement;

//조건문의 형식3. if-else-if 중첩
//여러문장 중 선택. 오직 하나의 문장만이 수행된다.
if (<수식1>) true_statement1;
else if(<수식2>) false_statement2;
else if(<수식3>) false_statement3;
else default_statement;

//예제 7-18
//형식1 문장
if(!lock) bufffer = data;
if(enable) out = in;
//형식2 문장
if (number_queued < MAX_Q_DEPTH)
begin
    data_queue = data;
    number_queued = number_queued + 1;
end
else
    $display("Queue Full. Try again!");
//형식3 문장
//ALU제어 신호에 따라 문장을 수행한다.
if (alu_control1 == 0)
    y = x + z;
else if (alu_control2 == 1)
    y = x - z;
else if (alu_control2 == 2)
    y = x * z;
else 
    $display("Invalid ALU control signal");
