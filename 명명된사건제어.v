//데이터의 마지막 패킷이 도착한 후에 데이터 버퍼가 데이터에 저장
event received_data; // 
always @(posedge clock) begin
    if (last_data_packet) //만약 이것이 마지막 데이터패킷이면
        ->received_data; //사건 received_data를 구동한다.
end