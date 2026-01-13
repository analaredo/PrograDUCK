function scr_getfood(){
     with (obj_duck)
    {
         if (has_food)
                {
                    startDialogue($"ERROR_ALREADYHASFOOD");
                    scr_fail ();
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
                    scr_fail ();
                    return;
                }
        
        has_food = true;
        
      
        
    }
}