function scr_fase0(){
    // Executa as ações dos slots preenchidos pelo jogador (fase 0)
    show_debug_message("scr_fase0: executando ações dos slots");
    var mgr = instance_find(obj_levelmanager, 0);
    if (!instance_exists(mgr)) {
        show_debug_message("scr_fase0: obj_levelmanager não encontrado");
        return;
    }

    with (mgr) {
        for (var i = 0; i < array_length(slots); i++) {
            var slot = slots[i];
            if (instance_exists(slot) && slot.state == SlotState.FULL) {
                if (slot.card_action != noone && slot.card_target != noone) {
                    execute_action(slot.card_action, slot.card_target); // <- Passa os dois parâmetros
                }
            }
        }
    }
}