
if (state == DuckState.WALK && instance_exists(target)) {
    walk(target);

    if (point_distance(x, y, target.x, target.y) < 2) {
        state = DuckState.IDLE;
        arrived = true;
    }
}

// === Ações compostas ===
switch (current_action) {
    case ActionState.FILL_BOWL:
        scr_fillbowl();
        break;
;
}
