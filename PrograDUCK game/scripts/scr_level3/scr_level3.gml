function scr_level3(){
    with (obj_levelmanager) {
       
        if (!variable_instance_exists(id, "action_queue")) {
            action_queue = ds_queue_create();
        }
        
       
        ds_queue_clear(action_queue);
      
        var comparison_operator = ""; // (<=, >, !=, <);
        var increment_operator = "";  // (SOMAR, SUBTRAIR)
        
        // Verifica se há pelo menos 2 slots
        if (array_length(slots) >= 2) {
                comparison_operator = slots[0].card_action;
                increment_operator = slots[1].card_action;
           
        }
        
     
        
        // Cria a combinação como string
        var combination = string(comparison_operator) + "_" + string(increment_operator);
        
        // Inicializa variáveis para controlar o loop animado
        loop_target = 0;
        loop_counter = 0;
        
        switch (combination) {
            
            case "<=_SOMAR":
                // for (i = 0; i <= 5; i++) = 5 mordidas
                for (var i = 0; i < 5; i++) {
                    ds_queue_enqueue(action_queue, {action: scr_bite, target: noone});
                }
                is_executing = true;
                return;
                
            case "!=_SOMAR":
                for (var i = 0; i != 5; i++) {
                    ds_queue_enqueue(action_queue, {action: scr_bite, target: noone});
                }
                is_executing = true;
                return;
                
         
            case "<_SOMAR":
   
                for (var i = 0; i < 5; i++) {
                    ds_queue_enqueue(action_queue, {action: scr_bite, target: noone});
                }
                is_executing = true;
                return;
				
            //NÃO EXECUTA
            case ">_SUBTRAIR":
                // Loop que nunca executa: for(i=1; i>5; i--)
                startDialogue($"ERROR_LOOPNEVEREXECUTES");
                scr_fail();
                return;
                
            case ">_SOMAR":
                // Loop que nunca executa: for(i=1; i>5; i++)
                startDialogue($"ERROR_LOOPNEVEREXECUTES");
                scr_fail();
                return;

            //INFINITOS   
            case "!=_SUBTRAIR":
                // Loop infinito: for(i=0; i!=5; i--)
                for(var i=0; i!=5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= -10) {
                        break;
                    }
                }
                break; 
            case "<_SUBTRAIR":
                // Loop infinito: for(i=0; i<5; i--)
                for(var i=0; i<5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= -10) {
                        break;
                    }
                }
                break;
            case "<=_SUBTRAIR":
                // Loop infinito: for(i=0; i<=5; i--)
                for(var i=0; i<=5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= -10) {
                        break;
                    }
                }
                break;

            default:
                // Combinação não reconhecida
                startDialogue($"ERROR_WRONGCARDS");
                scr_fail();
                return;
        }
        
        //VERIFICAÇÃO DO RESULTADO FINAL
        if (global.totalbites == 5) {
            startDialogue($"SUCCESS_LEVEL3");
            scr_win();
        } else if (global.totalbites < 0) {
            startDialogue($"ERROR_NEGATIVEBITES");
            scr_fail();
        } else if (global.totalbites > 5) {
            startDialogue($"ERROR_TOOMANYBITES");
            scr_fail();
        } else if (global.totalbites < 5) {
            startDialogue($"ERROR_NOTENOUGHBITES");
            scr_fail();
        }
            

    }
}
