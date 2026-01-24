
function scr_setup_fase(fase) {
    switch (fase) {
		  
        case 1:
             script_fase = scr_level1;
			help_fase = $"HELP_LEVEL1";
			inicio_fase = $"INTRO_LEVEL1";
        break;

        case 2:
            script_fase = scr_level2;
			help_fase = $"HELP_LEVEL2";
			inicio_fase = $"INTRO_LEVEL2";
        break;
		
		case 3:
            script_fase = scr_level3;
			help_fase = $"HELP_LEVEL3";
			inicio_fase = $"INTRO_LEVE3";
        break;
		
		case 4:
            script_fase = scr_level4;
			help_fase = $"HELP_LEVEL4";
			inicio_fase = $"INTRO_LEVEL4";
        break;
    }
}