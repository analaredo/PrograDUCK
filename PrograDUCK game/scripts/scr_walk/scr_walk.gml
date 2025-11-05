// Resolve target (string or instance) and command the duck to walk to it
function scr_walk(target_param) {
    
    //Procura a instance na room, transformando string em instância se necessário
    var target_obj = noone;
    
    if (is_string(target_param)) {
        target_obj = scr_verifyinstance(target_param);
    }

    else if (instance_exists(target_param)) {
        target_obj = target_param;
    }

    if (target_obj == noone) {
        with (obj_duck) {
            state = DuckState.CONFUSED;
        }
        show_debug_message("Target inválido para WALK - setando DuckState.CONFUSED: " + string(target_param));
        return false;
    }

    // Ajusta todas as instâncias do pato para iniciar caminhada 
    with (obj_duck) {
        target = target_obj;
		arrived = false;
        state = DuckState.WALK;
       
    }

    show_debug_message("Executando ação: WALK para " + string(target_obj));
    return true;
}
/// @function walk()
/// Move o pato em direção ao obj_goal e atualiza o sprite

function walk(obj_goal) {
    
    if (!instance_exists(obj_goal)) return;

    // Vetor até o goal
    var dx = obj_goal.x - x;
    var dy = obj_goal.y - y;
    var dist = point_distance(x, y, obj_goal.x, obj_goal.y);

    // Se já está muito perto, não move (chegada tratada pelo obj_duck Step)
    if (dist < 2) {
        return;
    }

    // Normaliza o vetor de movimento
    var dir = point_direction(x, y, obj_goal.x, obj_goal.y);
    var move_x = lengthdir_x(1, dir);
    var move_y = lengthdir_y(1, dir);

    // Atualiza posição
    x += move_x * spd;
    y += move_y * spd;

    // Determina face de acordo com direção
    if (abs(move_x) > abs(move_y)) {
        face = (move_x > 0) ? FaceState.RIGHT : FaceState.LEFT;
    } else {
        face = (move_y > 0) ? FaceState.DOWN : FaceState.UP;
    }

    // Atualiza estado e sprite
    state = DuckState.WALK;
    sprite_index = sprite[DuckState.WALK][face];
    image_speed = 1;
}
