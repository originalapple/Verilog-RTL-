//제로지연제어는 다른 모든 문장이 그 시뮬레이션 시간에 실행된 후 
//이 문장을 마지막으로 수행되게 하는 방법. -> 레이스컨디션 없애기 위해

initial begin
    x=0;
    y=0;
end

initial begin
    #0 x=1;
    #@ y=4   
end