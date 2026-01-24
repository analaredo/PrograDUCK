function scr_reset () {
 	with (obj_duck){
	 	state = DuckState.IDLE;
		face = FaceState.DOWN;
		has_food = false;
			x = initial_x;
			y = initial_y;
		
	}

	global.totalbites = 0;

}