
function run_sequence() {
    for (var i = 0; i < array_length(slots); i++) {
        var slot = slots[i];
        var card = slot.card_in_slot;
        
        if (card == noone) continue;
                execute_action(card.value);   
        
    }
}
