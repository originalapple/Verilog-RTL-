reg x,y,z;

initial begin
    x=0;z=0;
    y=#5 x+z; //x와z의 값을 단위 시간 0에 취해서, x+z를 계산한 뒤 
    //5단위시간뒤 y값에 할당
end
initial begin
    x=0;z=0;
    temp_xz = x + z;
    #5 y = temp_xz; //현재 시간에 x+z의 값을 취해서 임시 변수에 저장
    //비록 x,z가 0과 5사이에 변한다고 해도 단위시간 5에 할당되는 값 안변함
    
end