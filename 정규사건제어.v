// @기호는 사건제어를 하는데 사용
@(clock) q = d; // q=d는 신호 클럭이 변할 때 마다
@(posedge clock) q = d; //q=d는 신호 클럭이 상승변환 할 때만 수행
@(negedge clock) q = d; //q=d는 신호클럭이 하강변환 할 때만 수항
