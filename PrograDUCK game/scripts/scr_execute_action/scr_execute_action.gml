function execute_action(action, target_param){
    switch (action) {
        case ActionState.WALK:
            var target_obj = noone;
            
            // Se target é string, resolve para instância
            if (is_string(target_param)) {
                target_obj = scr_verifyinstance(target_param);
            }
            // Se target já é uma instância, usa diretamente
            else if (instance_exists(target_param)) {
                target_obj = target_param;
            }
            
            if (target_obj == noone) {
                show_debug_message("ERRO: Target inválido para WALK - " + string(target_param));
                break;
            }
            
            with (obj_duck) {
                target = target_obj; // Agora não há conflito
                state = DuckState.WALK;
            }
            show_debug_message("Executando ação: WALK para " + string(target_obj));
            break;

        case ActionState.FILL_BOWL:
            // Implementar depois
            break;

        case ActionState.EAT:
            // Implementar depois
            break;

        default:
            show_debug_message("Ação desconhecida!");
            break;
    }
}
