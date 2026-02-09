function scr_liedown(){
	
	with (obj_duck){ 
	var goal_obj = scr_verifyinstance("obj_bed");
         if (goal_obj == noone)
                {
                    return;
                }
        
         if (point_distance(x, y, goal_obj.x, goal_obj.y) >= spd)
                {
                    startDialogue($"ERROR_FARFROMBED");
                    scr_fail ();
                    return;
                }
		 
         if (clothes != ClothesState.PAJAMAS)	
                {
                    startDialogue($"ERROR_NOPAJAMAS");
                    scr_fail ();
                    return;
                }
				
		var lamp_obj = scr_verifyinstance("obj_lamp");	
		
		 if (lamp_obj.state != SlotState.EMPTY)	
                {
                    startDialogue($"ERROR_LIGHTON");
                    scr_fail ();
                    return;
                }
				
				
		state = DuckState.IDLE;
		face = FaceState.DOWN;			
		scr_win();
			
		}		
}