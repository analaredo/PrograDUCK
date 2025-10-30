function execute_action(action){
switch (action) {
    case ActionState.WALK:
         with (obj_duck) {
                var goal = instance_find(obj_bowl, 0);
                if (instance_exists(goal)) {
                    target = goal;
                    state = DuckState.WALK;
                }
            }
            show_debug_message("Executando ação: WALK");
            break;


    case ActionState.FILL_BOWL:
        bowl.fill();
    break;

    case ActionState.EAT:
        duck.eat();
    break;

    default:
        show_debug_message("Ação desconhecida!");
    break;
}
}
