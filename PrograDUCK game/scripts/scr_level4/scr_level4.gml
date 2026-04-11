function scr_level4(){
    with (obj_gamemanager) {
      
        
        // Cria uma queue de ações
        if (!variable_instance_exists(id, "action_queue")) {
            action_queue = ds_queue_create();
        }
        
        // Limpa a queue anterior
        ds_queue_clear(action_queue);
        

        for (i = 0; i < array_length(slots); i++) {
            var slot = slots[i];
            // Verificação de segurança para o slot
            if (!instance_exists(slot)) {
               
                continue;
            }        
            scr_addSlotToQueue(slot);    
        }        
        // Inicia a execução da primeira ação na queue
        if (!ds_queue_empty(action_queue)) {
            is_executing = true;  // Marca que está executando
            var first_action = ds_queue_dequeue(action_queue);
            execute_action(first_action.action, first_action.target);
        } else {
           
        }
    }
}