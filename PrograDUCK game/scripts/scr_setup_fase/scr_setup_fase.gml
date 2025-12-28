
function scr_setup_fase(fase) {
    switch (fase) {
		
		case -1:
			draw_set_color(c_white);
            show_debug_message("Fase 0 iniciada: Andar até o pote de ração.");
        break;
        
        case 0:
			script_fase = scr_fase0;
            show_debug_message("Fase 0 iniciada: Andar até o pote de ração.");
        break;

        case 1:
            show_debug_message("Fase 1 iniciada: Teste de condicionais.");
        break;

        case 2:
            show_debug_message("Fase 2 iniciada: Usando loops.");
        break;
    }
}