function scr_level1_3(){
    with (obj_gamemanager) {
       
        if (!variable_instance_exists(id, "action_queue")) {
            action_queue = ds_queue_create();
        }
        
        // Limpa a queue anterior
        ds_queue_clear(action_queue);
        // Pega os operadores escolhidos pelo jogador nos slots
        var comparison_operator = ""; // slot da comparação (<=, >, !=, <);
        var increment_operator = "";  // slot da operação (SOMAR, SUBTRAIR)
        
        // Verifica se há pelo menos 2 slots
        if (array_length(slots) >= 3) {
                book_pages = slots[0].card_action;
                open_book = slots[1].card_action;
                var_type = slots[2].card_action;
           
        }
            
         //opcoes do jogador preencher bool_falso, bool_verdadeiro, texto_cinco, int_cinco, var_bool, var_int
        switch (book_pages) {
            case "int_cinco":
            
                break;
            case "texto_cinco":
                startDialogue("ERROR_STRINGINSTEADOFINT");
                scr_fail();
                break;

            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "var_int":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail()  ;
                break;
            case "bool_verdadeiro":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "bool_falso":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail();
                break;
            default:
                startDialogue("ERROR_EMPTYSLOT");
                scr_fail();        
        }   
            
        switch (open_book) {
            case "bool_verdadeiro":
                break; 
             case "bool_falso":
                startDialogue("ERROR_RETELLSTORY");
                scr_fail();
                break;       
           case "int_cinco":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break; 
            case "texto_cinco":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break; 
            case "var_bool":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "var_int":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail();
                break;
                default:
                startDialogue("ERROR_EMPTYSLOT");
                scr_fail();       
            
        } 


        switch (var_type) {
            case "var_bool":
                break; 
             case "var_int":
                startDialogue("ERROR_WRONGVARIABLETYPE");
                scr_fail();
                break;       
           case "int_cinco":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break; 
            case "texto_cinco":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break; 
            case "bool_verdadeiro":
                startDialogue("ERROR_UNRELATEDCARD");
                scr_fail();
                break;    
            case "bool_falso":
                startDialogue("ERROR_UNRELATEDCARD"); 
                scr_fail();
                break;  
            default:
                startDialogue("ERROR_EMPTYSLOT");
                scr_fail();   
        }

        // Verifica se todas as condições estão corretas para vitória
        if (book_pages == "int_cinco" && open_book == "bool_verdadeiro" && var_type == "var_bool") {
            scr_win();
        }
    }
}