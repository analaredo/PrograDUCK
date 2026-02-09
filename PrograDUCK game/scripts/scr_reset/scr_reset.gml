function scr_reset () {
 	with (obj_duck){
		clothes = initial_clothes;
	 	state = DuckState.IDLE;
		face = FaceState.DOWN;
		has_food = false;
			x = initial_x;
			y = initial_y;
		
	}

	global.totalbites = 0;
	
	with (obj_bowl){
		state = SlotState.EMPTY;
	}
	
	with(obj_lamp) {
		state = SlotState.FULL;
	}	

}