function scr_eat()
{
    with (obj_duck)
    {
        if (current_action != ActionState.EAT)
        {
            current_action = ActionState.EAT;
            fill_step = 0;
        }
        
        switch (fill_step)
        {
            case 0:
                scr_walk("obj_bowl");
                fill_step = 1;
                break;
            
            case 1:
                if (arrived)
                {
                    if (obj_bowl.state == SlotState.EMPTY)
                    {
                        startDialogue($"ERROR_NOFOOD");
                        state = DuckState.CONFUSED;
                    }
                    else
                    {
                        fill_step = 2;
                        show_debug_message("Comendo...");
                        exit;
                    }
                }
                
                break;
            
            case 2:
                obj_bowl.state = SlotState.EMPTY;
                startDialogue($"SUCESS_EATING");
                state = DuckState.HAPPY;
                break;
        }
    }
}