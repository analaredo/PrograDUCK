function scr_fase0(){
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
        
        // Se a tigela está vazia, adiciona slot 0 na queue
        if (bowl_empty && array_length(slots) > 0) {
            var slot = slots[0];
            
            if (instance_exists(slot) && slot.state == SlotState.FULL) {
                if (slot.card_action != noone && slot.card_target != noone) {
                    ds_queue_enqueue(action_queue, {action: slot.card_action, target: slot.card_target});
                }
            }
        }
        
        // Sempre adiciona slot 1 na queue
        if (array_length(slots) > 1) {
            var slot = slots[1];
            
            if (instance_exists(slot) && slot.state == SlotState.FULL) {
                if (slot.card_action != noone && slot.card_target != noone) {
                    ds_queue_enqueue(action_queue, {action: slot.card_action, target: slot.card_target});
                }
            }
        }
        
        // Inicia a execução da primeira ação na queue
        if (!ds_queue_empty(action_queue)) {
            var first_action = ds_queue_dequeue(action_queue);
            execute_action(first_action.action, first_action.target);
        }
    }
}