function scr_eat()
{
    with (obj_duck)
    {
        // Verifica se está perto do obj_bowl usando scr_verifyinstance
        var bowl_obj = scr_verifyinstance("obj_bowl");
        if (bowl_obj == noone)
        {
            return;
        }
        
        if (point_distance(x, y, bowl_obj.x, bowl_obj.y) >= spd)
        {
	
           startDialogue($"ERROR_FARFROMBOWLEAT");
			scr_fail ();
            return;
        }
        
        // Verifica se o bowl tem comida
        if (bowl_obj.state == SlotState.EMPTY)
        {
			
            startDialogue($"ERROR_NOFOOD");
			 scr_fail ();
            return;
        }
        
       
        current_action = noone;
		global.levelblocked[2] = 1;
        startDialogue($"SUCESS_EATING");
        state = DuckState.IDLE;
		scr_win();
        
    }
}