var card = instance_place(x, y, obj_card);
if (card != noone && card.state != CardState.DRAGGING) {
    state = SlotState.FULL;
	card_in_slot = card;
} else {
    state = SlotState.EMPTY;
	card_in_slot = noone;
}
           