function scr_level1_1(){
    with (obj_levelmanager) {
       
        if (!variable_instance_exists(id, "action_queue")) {
            action_queue = ds_queue_create();
        }
        
        // Limpa a queue anterior
        ds_queue_clear(action_queue);
 
      
        if (array_length(slots) >= 3) {
                slot0 = slots[0].card_action;
                slot1 = slots[1].card_action;
                slot2 = slots[2].card_action;
           
        }
            
       
        switch (slot0) {
            case "var_string":
            
                break;
            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "var_int":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
                break;
			default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;
           
        }   
            
        switch (slot1) {
           case "var_string":
             startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "var_bool":
				 break;
            case "var_int":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;
        } 


        switch (slot2) {
            case "var_string":
             startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
                break;
            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "var_int":
                break;
			default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;	
        }

        // Verifica se todas as condições estão corretas para vitória
        if (slot0 = "var_string" && slot1 = "var_bool" && slot2 = "var_int") {
            scr_win();
        }
    }
}