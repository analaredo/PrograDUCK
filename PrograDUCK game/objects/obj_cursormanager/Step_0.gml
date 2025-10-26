
x = mouse_x;
y = mouse_y;


if (mouse_check_button(mb_left)) {
    state = CursorState.CLICKING;
} else {
    state = CursorState.IDLE;
}


sprite_index = cursor_sprites[state];
