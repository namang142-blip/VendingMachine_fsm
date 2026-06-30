module VM_fsm(
  input clk,rst,coin5,coin10,
  output reg dispense
);
  parameter S0=2'b00,
  			S5=2'b01,
  			DISPENSE=2'b10;
  reg [1:0] current,next;
  
  always@(posedge clk or posedge rst)begin
    if(rst)
      current<=S0;
    else
      current<=next;
  end
  
  always@(*)begin
    next=current;
    case(current)
      S0:begin
        if(coin5)
          next=S5;
        else if(coin10)
          next=DISPENSE;
      end
      
      S5:begin
        if(coin5 || coin10)
          next=DISPENSE;
          else
            next=S5;
        end
        
        DISPENSE:begin
          next=S0;
        end
        
        default:next=S0;
        endcase
      end
      
      always@(*)begin
        case(current)
          DISPENSE:
            dispense=1'b1;
          default: dispense=1'b0;
        endcase
      end
      endmodule
