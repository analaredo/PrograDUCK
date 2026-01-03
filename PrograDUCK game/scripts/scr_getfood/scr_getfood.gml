function scr_getfood(){
     with (obj_duck)
    {
         if (has_food)
                {
                    startDialogue($"ERROR_ALREADYHASFOOD");
                    state = DuckState.CONFUSED;
                    return;
                }
        
      
         var goal_obj = scr_verifyinstance("obj_foodbox");
         if (goal_obj == noone)
                {
                    return;
                }
        
         if (point_distance(x, y, goal_obj.x, goal_obj.y) >= spd)
                {
                    startDialogue($"ERROR_FARFROMBOX");
                    state = DuckState.CONFUSED;
                    return;
                }
        
        has_food = true;
        
      
        
    }
}