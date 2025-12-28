function scr_addSlotToQueue(slot){
if (instance_exists(slot) && variable_instance_exists(slot, "state") && slot.state == SlotState.FULL) {
                if (slot.card_action != noone && slot.card_target != noone) {
                    ds_queue_enqueue(action_queue, {action: slot.card_action, target: slot.card_target});
                }
            }
}