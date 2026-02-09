
function scr_setup_fase(fase) {
    switch (fase) {
		  
        case 1:
             script_fase = scr_level1;
			help_fase = $"HELP_LEVEL1";
			inicio_fase = $"INTRO_LEVEL1";
        break;

        case 2:
            script_fase = scr_level2;
			script_verify = scr_null;
			help_fase = $"HELP_LEVEL2";
			inicio_fase = $"INTRO_LEVEL2";
			sucess_dialogue = $"SUCCESS_LEVEL2";
        break;
		
		case 3:
            script_fase = scr_level3;
			script_verify = scr_verify_level3;
			help_fase = $"HELP_LEVEL3";
			inicio_fase = $"INTRO_LEVEL3";
		sucess_dialogue = $"SUCCESS_LEVEL3";
		break;
		
	case 4:
            script_fase = scr_level4;
		script_verify = scr_null;
			help_fase = $"HELP_LEVEL4";
			inicio_fase = $"INTRO_LEVEL4";
			sucess_dialogue = $"SUCCESS_LEVEL4";
        break;
    }
}