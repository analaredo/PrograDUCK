if (state == DuckState.FINISHED){
	current_action = noone;
	state = DuckState.IDLE;
	fill_step = 0;
}
	
if (state == DuckState.CONFUSED) {
    sprite_index = sprite[DuckState.CONFUSED, face];
	if (instance_exists(obj_levelmanager)) {
		obj_levelmanager.is_executing = false;
        obj_levelmanager.current_slot = 0;
        obj_levelmanager.texto_fase = "ERRO: O pote está vazio!\nTente novamente.";
    }
	current_action = noone;
    target = noone; // Para o movimento
    arrived = false; // Reset da flag
    return; // Sai do Step para não processar movimento
}


if (state == DuckState.WALK && instance_exists(target)) {
    walk(target);

    if (point_distance(x, y, target.x, target.y) < 2) {
        state = DuckState.IDLE;
        arrived = true;
    }
}

// === Processa queue de ações quando IDLE e não há ação composta ativa ===
if (state == DuckState.IDLE && current_action == noone && instance_exists(obj_levelmanager)) {
    with (obj_levelmanager) {
        if (variable_instance_exists(id, "action_queue") && ds_exists(action_queue, ds_type_queue) && !ds_queue_empty(action_queue)) {
            var next_action = ds_queue_dequeue(action_queue);
            execute_action(next_action.action, next_action.target);
        }
    }
}

// === Ações compostas ===
switch (current_action) {
    case ActionState.FILL_BOWL:
        scr_fillbowl();
        break;
		
	case ActionState.EAT:
	scr_eat();
	break;
}

