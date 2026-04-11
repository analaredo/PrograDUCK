function scr_level1_2(){
    with (obj_gamemanager) {
       
        if (array_length(slots) >= 3) {
                slot0 = slots[0].card_action;
                slot1 = slots[1].card_action;
                slot2 = slots[2].card_action;
           
        }
            
       
        switch (slot0) {
            case "var_string":
				 startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
              
                break;
            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                
          
		  case "var_int":
			
                break;
			default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 return;
			
           
        }   
            
        switch (slot1) {
           case "var_string":
             startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                return;
                 
            case "var_bool":
				 break;
            case "var_int":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
                return;
            
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 return;
	
        } 


        switch (slot2) {
            case "var_string":
           
                break;
            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                return;
                  
            case "var_int":
			  startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
			  return;
            
			default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 return;
		
        }

        // Verifica se todas as condições estão corretas para vitória
        if (slot0 == "var_int" && slot1 == "var_bool" && slot2 == "var_string") {
            scr_win();
        }
    }
}