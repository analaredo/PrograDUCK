function scr_level2_2(){
    with (obj_gamemanager) {
     
        /*
        FRASE 1:SE estou cansado ENTÃO vou dormir
        FRASE 2:SE gosto de dormir no escuro ENTÃO acender a luz\
        FRASE3:SE sentir frio ENTÃO vestir casaco
        FRASE4:SE abrir aplicativo ENTÃO não abrir aplicativo

        */
        if (array_length(slots) >= 3) {
                slot0 = slots[0].card_action;
                slot1 = slots[1].card_action;
                slot2 = slots[2].card_action;
           
        }
            
       
        switch (slot0) {
            case 0:
                startDialogue("2_2_ERRORSENTENCE1");
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
                startDialogue("2_2_ERRORSENTENCE2");
                scr_fail();
                break;
            case 1:
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    
              
        }
        switch (slot2) {
            case 0:
                break;
            case 1:
                startDialogue("2_2_ERRORSENTENCE3");
                scr_fail();
                break;
            default:
			 startDialogue($"ERROR_EMPTYSLOT");
			 break;    
        }
        
            
        

        // Verifica se todas as condições estão corretas para vitória
        if (slot0 == 1 && slot1 == 1 && slot2 == 0 ) {
            scr_win();
        }
    }
}