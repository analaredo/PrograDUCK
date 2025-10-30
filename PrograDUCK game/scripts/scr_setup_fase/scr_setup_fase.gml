/// @function scr_setup_fase(fase)
/// @param {real} fase - Número da fase a ser configurada

function scr_setup_fase(fase) {
    switch (fase) {
        
        case 0:
            // Fase 0 — introdução: o pato deve andar até o pote
			obj_goal = global.bowl;
            show_debug_message("Fase 0 iniciada: Andar até o pote de ração.");
        break;

        case 1:
            // Fase 1 — condicionais: se o pote estiver vazio, encher, senão comer
            obj_goal = global.bowl;
            show_debug_message("Fase 1 iniciada: Teste de condicionais.");
        break;

        case 2:
            // Fase 2 — loops, por exemplo
            obj_goal = instance_find(obj_bed, 0);
            show_debug_message("Fase 2 iniciada: Usando loops.");
        break;
    }
}