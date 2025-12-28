function scr_level1(){
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
                show_debug_message("Warning: Slot " + string(i) + " não existe mais!");
                continue;
            }
        
            // Slots 0 e 1 só executam se o bowl estiver vazio
            // Outros slots sempre executam
            if ((i == 0 || i == 1) && !bowl_empty) {
                continue; 
            }
            
			scr_addSlotToQueue(slot);
            
        }

        
        // Inicia a execução da primeira ação na queue
        if (!ds_queue_empty(action_queue)) {
            var first_action = ds_queue_dequeue(action_queue);
            execute_action(first_action.action, first_action.target);
        }
    }
}