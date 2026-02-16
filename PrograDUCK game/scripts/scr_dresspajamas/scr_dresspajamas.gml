function scr_dresspajamas(){
	with (obj_duck)
    {
         if (clothes == ClothesState.PAJAMAS)	
                {
                    startDialogue($"ERROR_ALREADYDRESSED");
                    scr_fail ();
                    return;
                }
        
      
         var goal_obj = scr_verifyinstance("obj_dresser");
         if (goal_obj == noone)
                {
                    return;
                }
        
         if (point_distance(x, y, goal_obj.x, goal_obj.y) >= spd)
                {
                    startDialogue($"ERROR_FARFROMDRESSER");
                    scr_fail ();
                    return;
                }
        
         goal_obj = scr_verifyinstance("obj_lamp");
         if (goal_obj.state == SlotState.EMPTY)	
                {
                    startDialogue($"ERROR_LIGHTISOFFCLOTHES");
                    scr_fail ();
                    return;
                }

        clothes = ClothesState.PAJAMAS;
        
      
        
    }
}