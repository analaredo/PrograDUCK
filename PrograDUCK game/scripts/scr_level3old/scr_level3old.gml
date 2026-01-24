function scr_level3old(){
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
        
        switch (combination) {
            //SUCESSOS
            case "<=_SOMAR":
                for (var i = 0; i <= 5; i++) {
                    global.totalbites++;
                }
                break;
                
            case "!=_SOMAR":
                // Loop que vai de 0 até infinito (nunca será != 5)
                for(var i=0; i!=5; i++){
                    global.totalbites++;
                    // Para em 10 mordidas para evitar travamento
                    if (global.totalbites >= 10) {
                        break;
                    }
                }
                break;
            //QUASE CORRETO    
            case "<_SOMAR":
                // Quase correto, mas só 4 mordidas: for(i=0; i<5; i++)
                for (var i = 0; i < 5; i++) {
                    global.totalbites++;
                }
                break;
            //NÃO EXECUTA
            case ">_SUBTRAIR":
                // Loop que nunca executa: for(i=0; i>5; i--)
                startDialogue($"ERROR_LOOPNEVEREXECUTES");
                scr_fail();
                return;
                
            case ">_SOMAR":
                // Loop que nunca executa: for(i=0; i>5; i++)
                startDialogue($"ERROR_LOOPNEVEREXECUTES");
                scr_fail();
                return;

            //INFINITOS   
            case "!=_SUBTRAIR":
                // Loop infinito que vai para negativo
                for(var i=0; i!=5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= 0) {
                        break;
                    }
                }
                break; 
            case "<_SUBTRAIR":
                // Loop infinito que vai para negativo
                for(var i=0; i<5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= 0) {
                        break;
                    }
                }
                break;
            case "<=_SUBTRAIR":
                // Loop infinito que vai para negativo
                for(var i=0; i<=5; i--) {
                    global.totalbites--;
                    // Para apenas para evitar travamento, mas deixa negativo
                    if (i <= 0) {
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