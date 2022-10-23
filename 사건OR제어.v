always @(reset or clock or d) begin //리셋 또는 클럭 d가 바뀔 때까지 기다림
    if(reset) //만약 리셋 신호가 참이면, q=0이다.
        q = 1'b0;
    else if(clock) //만약 클럭 신호가 참이면, 래치입력
        q = d;
end
// 감지목록에서 or 대신 , 사용가능
