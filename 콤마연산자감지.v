always @(reset,clock,d) //리셋,클럭,d가 바뀔 때까지 기다린다.
begin
    if (reset) //만약 리셋신호가 들어오면 q=0이다.
    q = 1'b0;
    else if (clock) //클럭 신호가 들어오면 d입력
    q = d;
end
//비동기 하강 리셋을 가진 rising-edge D-f/f
always @(posedge clk, negedge reset)
begin
    if(!reset)
    q<=0;
    else
    q<=d;
end
