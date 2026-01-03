function scr_fillbowl()
{
    with (obj_duck)
    {
        // Verifica se o pato tem comida
        if (!has_food)
        {
            startDialogue($"ERROR_NOFILLFOOD");
            state = DuckState.CONFUSED;
            return;
        }
        
      
        var bowl_obj = scr_verifyinstance("obj_bowl");
        if (bowl_obj == noone)
        {
            return;
        }
        
        if (point_distance(x, y, bowl_obj.x, bowl_obj.y) >= spd)
        {
            startDialogue($"ERROR_FARFROMBOWL");
            state = DuckState.CONFUSED;
            return;
        }
        
        // Verifica se o bowl já está cheio
        if (bowl_obj.state == SlotState.FULL)
        {
            startDialogue($"ERROR_BOWLFULL");
            state = DuckState.CONFUSED;
            return;
        }
        
        // Se chegou até aqui, pode encher o bowl
        bowl_obj.state = SlotState.FULL;
        has_food = false; // Remove a comida do pato
    }
}