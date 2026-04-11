function scr_level2_1(){
    with (obj_gamemanager) {
     
        /*
        FRASE 1:SE estou cansado ENTÃO vou dormir
        FRASE 2:SE gosto de dormir no escuro ENTÃO acender a luz\
        FRASE3:SE sentir frio ENTÃO vestir casaco
        FRASE4:SE abrir aplicativo ENTÃO não abrir aplicativo

        */
        if (array_length(slots) >= 4) {
                slot0 = slots[0].card_action;
                slot1 = slots[1].card_action;
                slot2 = slots[2].card_action;
				slot3 = slots[3].card_action;
           
        }
            
       
        switch (slot0) {
            case 0:
                startDialogue("ERROR_ERRORSENTENCE1");
                scr_fail();
                break;
            case 1:
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    
              
        } 

        switch (slot1) {
            case 0:
                break;
            case 1:
                startDialogue("ERROR_ERRORSENTENCE2");
                scr_fail();
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    
              
        }
        switch (slot2) {
            case 0:
                startDialogue("ERROR_ERRORSENTENCE3");
                scr_fail();
                break;
            case 1:
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    
        }
        switch (slot3) {
            case 0:
            
                break;
            case 1:
                startDialogue("ERROR_ERRORSENTENCE4");
                scr_fail();
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    

        }
            
        

        // Verifica se todas as condições estão corretas para vitória
        if (slot0 == 1 && slot1 == 0 && slot2 == 1 && slot3 == 0) {
            scr_win();
        }
    }
}