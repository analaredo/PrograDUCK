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
            return;
        }
        
        // Verifica se o bowl tem comida
        if (bowl_obj.state == SlotState.EMPTY)
        {
            startDialogue($"ERROR_NOFOOD");
            state = DuckState.CONFUSED;
            return;
        }
        
        bowl_obj.state = SlotState.EMPTY;
        current_action = noone;
        startDialogue($"SUCESS_EATING");
        state = DuckState.IDLE;
        show_debug_message("Comendo...");
    }
}