
function scr_setup_fase(fase) {
    switch (fase) {
		
		case -1:
			draw_set_color(c_white);
            show_debug_message("Fase 0 iniciada: Andar até o pote de ração.");
        break;
        
        case 0:
			script_fase = scr_level1;
			help_fase = $"HELP_LEVEL1";
        break;

        case 1:
            
        break;

        case 2:
            script_fase = scr_level1;
			help_fase = $"HELP_LEVEL1";
			inicio_fase = $"INTRO_LEVEL1";
        break;
    }
}