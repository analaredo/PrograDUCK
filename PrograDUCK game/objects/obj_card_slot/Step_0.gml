var card = instance_place(x, y, obj_card);
if (card != noone && card.state != CardState.DRAGGING) {
    state = SlotState.FULL;
} else {
    state = SlotState.EMPTY;
}
           