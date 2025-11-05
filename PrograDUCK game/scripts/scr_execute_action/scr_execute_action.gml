function execute_action(action, target_param){
    show_debug_message("=== execute_action chamada com action: " + string(action) + ", target: " + string(target_param) + " ===");
    
    switch (action) {
        case ActionState.WALK:
            show_debug_message("Executando WALK");
            scr_walk(target_param);
            break;

        case ActionState.FILL_BOWL:
            show_debug_message("Executando FILL_BOWL");
            scr_fillbowl();
            break;

        case ActionState.EAT:
            show_debug_message("Executando EAT (não implementado)");
            break;

        default:
            show_debug_message("Ação desconhecida: " + string(action));
            break;
    }
    
    show_debug_message("=== execute_action finalizada ===");
}
