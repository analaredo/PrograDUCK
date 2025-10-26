/// STEP EVENT - Debug de direção por teclado

// Detecta teclas direcionais (apenas para debug; no jogo real o pato se move por funções)
var pressing_any = false;

if (keyboard_check(vk_right)) {
    face = Facestate.RIGHT;
    pressing_any = true;
}
if (keyboard_check(vk_left)) {
    face = Facestate.LEFT;
    pressing_any = true;
}
if (keyboard_check(vk_up)) {
    face = Facestate.UP;
    pressing_any = true;
}
if (keyboard_check(vk_down)) {
    face = Facestate.DOWN;
    pressing_any = true;
}

// Ajusta movimento para fins visuais (como no seu projeto antigo)
if (pressing_any) {
    movement = DuckState.WALK;
} else {
    movement = DuckState.IDLE;
}

// Atualiza sprite com fallback seguro (evita erro caso a combinação ainda não exista)
if (is_array(sprite) && array_length(sprite) > movement) {
    // Se a sub-array existir e a entrada não for -1
    var sub = sprite[movement];
    if (is_array(sub) && array_length(sub) > face) {
        var candidate = sprite[movement, face];
        if (candidate != -1) {
            sprite_index = candidate;
        }
    }
}
