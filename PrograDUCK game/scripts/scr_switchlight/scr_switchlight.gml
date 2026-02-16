function scr_switchlight(){
	with (obj_duck)
    {
		
		 var goal_obj = scr_verifyinstance("obj_lamp");
		 
         if (goal_obj == noone)
                {
                    return;
                }
				
         if (goal_obj.state == SlotState.EMPTY)	
                {
                    startDialogue($"ERROR_LIGHTALREADYOFF");
                    scr_fail ();
                    return;
                }
        
		 goal_obj = scr_verifyinstance("obj_dresser");
         if (point_distance(x, y, goal_obj.x, goal_obj.y) >= spd)
                {
                    startDialogue($"ERROR_FARFROMLAMP");
                    scr_fail ();
                    return;
                }
        
		 goal_obj = scr_verifyinstance("obj_lamp");
       goal_obj.state = SlotState.EMPTY 
      
        
    }
}
