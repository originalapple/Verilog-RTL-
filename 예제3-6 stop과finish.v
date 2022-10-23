initial begin
    clock = 0;
    reset = 1;
    #100 $stop; //단위 시간 100에 시뮬레이션 중단
    #900 $finish; //단위 시간 1000에 시뮬레이션을 끝냄.
end