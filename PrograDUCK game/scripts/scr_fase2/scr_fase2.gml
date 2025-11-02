function scr_fase2(){
    // Executa as ações dos slots preenchidos pelo jogador
    with (obj_levelmanager) {
        for (var i = 0; i < array_length(slots); i++) {
            var slot = slots[i];
            if (instance_exists(slot) && slot.state == SlotState.FULL) {
                // Usa as variáveis corretas do slot
                if (slot.card_action != noone && slot.card_target != noone) {
                    execute_action(slot.card_action, slot.card_target); // <- Adicione card_target
                }
            }
        }
    }
}