/// @function walk()
/// Move o pato em direção ao obj_goal e atualiza o sprite

function walk(obj_goal) {
    
    if (!instance_exists(obj_goal)) return;

    // Vetor até o goal
    var dx = obj_goal.x - x;
    var dy = obj_goal.y - y;
    var dist = point_distance(x, y, obj_goal.x, obj_goal.y);

    // Se chegou no destino, para
    if (dist < 2) {
        state = DuckState.IDLE;
        image_speed = 0;
        image_index = 0;
        sprite_index = sprite[DuckState.IDLE][face];
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
