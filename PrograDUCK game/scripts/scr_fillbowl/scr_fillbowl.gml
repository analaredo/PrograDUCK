function scr_fillbowl()
{
    with (obj_duck)
    {
        if (current_action != ActionState.FILL_BOWL)
        {
            current_action = ActionState.FILL_BOWL;
            fill_step = 0;
        }
        
        switch (fill_step)
        {
            case 0:
                scr_walk("obj_foodbox");
                fill_step = 1;
                break;
            
            case 1:
                if (arrived)
                {
                    scr_walk("obj_bowl");
                    arrived = false;
                    fill_step = 2;
                }
                
                break;
            
            case 2:
                if (arrived)
                {
                    if (obj_bowl.state == SlotState.FULL)
                    {
                        startDialogue(DuckTopics.ERROR_BOWLFULL);
                        state = DuckState.CONFUSED;
                        exit;
                    }
                    
                    fill_step = 3;
                    show_debug_message("Pote cheio!");
                }
                
                break;
            
            case 3:
                obj_bowl.state = SlotState.FULL;
                current_action = noone;
                state = DuckState.IDLE;
                break;
        }
    }
}