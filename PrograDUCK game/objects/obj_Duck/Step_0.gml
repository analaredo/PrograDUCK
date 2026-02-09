

sprite_index = sprite[state][face];


//DECIDE QUAL ROUPA O PATO VAI USAR
if (clothes == ClothesState.PAJAMAS) {
    sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_pajamas_right;
    sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_pajamas_left;
    sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_pajamas_up;
    sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_pajamas_down;
    // WALK
    sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_walk_pajamas_right;
    sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_walk_pajamas_left;
    sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_pajamas_up;
    sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_pajamas_down;
    }

if (clothes == ClothesState.NORMAL) {
    sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_right;
    sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_left;
    sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_up;
    sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_down;


    // WALK
    sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_walk_right;
    sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_walk_left;
    sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_up;
    sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_down;
}

//=== LÓGICA DO PATO ===
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
        } else if (is_executing) {
			script_verify();
            is_executing = false;
        }
    }
}

