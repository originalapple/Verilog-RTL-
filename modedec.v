module modedec(
    //Clock & Resest
    CLK,
    RESET,
    
    //TEST MODE
    TEST,
    
    //MODE OUTPUT
    FUNCMODE,
    BISTMODE,
    SCANMODE,
    ALIVE_EN
);

input CLK;
input RESET;
input [1:0] TEST;

output FUNCMODE;
output BISTMODE;
output SCANMODE;
output ALIVE_EN;

reg wFUNCMODE;
reg wMODE_BIST;
reg wMODE_SCAN;
reg wALVIE_EN;

always @(*) begin
    wFUNCMODE = 0;
    wMODE_BIST = 0;
    wMODE_SCAN = 0;
    wALIVE_EN = 0;
    
    if (TEST[1:0] == 0) begin
        wFUNCTION = 1;
    end
    else begin
            case ({TEST[1:0]})
                2'b00 : wFUNCMODE = 1;
                2'b01 : wMODE_SCAN = 1;
                2'b10 : wMODE_BIST = 1;
                2'b11 : wALIVE_EN = 1;
                default : wFUNCMODE = 1;
            endcase
        end
    end
    
        assign FUNCMODE = wFUNCMODE;
        assign BISTMODE = wMODE_BIST;
        assign SCANMODE = wMODE_SCAN;
        assign ALIVE_EN = wALVIE_EN;
        
    endmodule
