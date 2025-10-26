switch (state) {
    
    case CardState.STATIC:
        if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
             drag_offset_x = mouse_x - x;
			 drag_offset_y = mouse_y - y;
			state = CardState.DRAGGING;	
        }
    break;
    
    case CardState.DRAGGING:
        x = mouse_x - drag_offset_x;
		y = mouse_y - drag_offset_y;
        
        if (mouse_check_button_released(mb_left)) {
            var slot = instance_place(x, y, obj_cardslot);
            if (slot != noone) {
				target_slot = slot;
				if (target_slot.state == SlotState.EMPTY){
				 target_x = slot.x;
				 target_y = slot.y;
				 state = CardState.MOVING_TO_SLOT;
				}
				else {         
                state = CardState.RETURNING;
				}
            } 
			else {         
                state = CardState.RETURNING;
            }
        }
    break;
    
    case CardState.RETURNING:
		target_slot = noone;
        x = lerp(x, start_x, 0.2);
        y = lerp(y, start_y, 0.2);
        
        if (point_distance(x, y, start_x, start_y) < 2) {
            x = start_x;
            y = start_y;
            state = CardState.STATIC;
        }
    break;
	
	case CardState.MOVING_TO_SLOT:
		x = lerp(x, target_x, 0.2);
		y = lerp(y, target_y, 0.2);

		if (point_distance(x, y, target_x, target_y) < 2) {
		    x = target_x;
		    y = target_y;
		    target_slot = noone; 
		    state = CardState.STATIC;
		}
	break;
}
