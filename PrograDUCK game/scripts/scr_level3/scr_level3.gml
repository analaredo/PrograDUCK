function scr_level3(){
    with (obj_levelmanager) {
       
        if (!variable_instance_exists(id, "action_queue")) {
            action_queue = ds_queue_create();
        }
        
        // Limpa a queue anterior
        ds_queue_clear(action_queue);
        // Pega os operadores escolhidos pelo jogador nos slots
        var comparison_operator = ""; // slot da comparação (<=, >, !=, <);
        var increment_operator = "";  // slot da operação (SOMAR, SUBTRAIR)
        
        // Verifica se há pelo menos 2 slots
        if (array_length(slots) >= 2) {
                comparison_operator = slots[0].card_action;
                increment_operator = slots[1].card_action;
           
        }
        
        // Debug: mostra os operadores para verificar (convertendo para string)
        show_debug_message("Comparison: " + string(comparison_operator));
        show_debug_message("Increment: " + string(increment_operator));
        
        // Cria a combinação como string
        var combination = string(comparison_operator) + "_" + string(increment_operator);
        
        // Inicializa variáveis para controlar o loop animado
        loop_target = 0;
        loop_counter = 0;
        
        switch (combination) {
            //SUCESSOS
            case "<=_SOMAR":
                loop_target = 5; // for (i = 1; i <= 5; i++) = 5 mordidas
                loop_counter = 0;
                alarm[0] = 30; // Inicia alarm para processar mordidas
                return;
                
            case "!=_SOMAR":
                // for (i = 1; i != 5; i++) = 4 mordidas (para quando i == 5)
                loop_target = 4;
                loop_counter = 0;
                alarm[0] = 30;
                return;
                
            //QUASE CORRETO    
            case "<_SOMAR":
                loop_target = 4; // for (i = 1; i < 5; i++) = 4 mordidas
                loop_counter = 0;
                alarm[0] = 30;
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
                startDialogue($"ERROR_MISSINGCARDS");
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
