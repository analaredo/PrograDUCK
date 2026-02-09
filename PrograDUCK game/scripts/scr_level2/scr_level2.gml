function scr_level2(){
    with (obj_levelmanager) {
        // Verifica se a tigela está vazia
        var bowl_empty = false;
        if (instance_exists(obj_bowl)) {
            bowl_empty = (obj_bowl.state == SlotState.EMPTY);
        }
        
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
            // Slots 0, 1, 2 e 3 SÓ executam se o bowl estiver vazio
            // Se o bowl não estiver vazio, pula esses slots
            if ((i == 0 || i == 1 || i == 2 || i == 3) && !bowl_empty) {
               
                continue; 
            }          
            scr_addSlotToQueue(slot);    
        }        
        // Inicia a execução da primeira ação na queue
        if (!ds_queue_empty(action_queue)) {
            is_executing = true;  // Marca que está executando
            var first_action = ds_queue_dequeue(action_queue);
            execute_action(first_action.action, first_action.target);
        }
    }
}