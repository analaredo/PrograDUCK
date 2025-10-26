window_set_cursor(cr_none); // desativa o cursor do sistema


state = CursorState.IDLE;


cursor_sprites = [];
cursor_sprites[CursorState.IDLE] = spr_cursor_IDLE;
cursor_sprites[CursorState.CLICKING] = spr_cursor_CLICKING;
