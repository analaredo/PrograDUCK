// Draw GUI event: desenha o cursor acima de tudo (UI e room)

var mx = device_mouse_get_x(0);
var my = device_mouse_get_y(0);

// Seleciona sprite atual (fallback para idle)
var s = cursor_sprites[? state] ? cursor_sprites[state] : spr_cursor_IDLE;

// Desenha no espaço GUI para garantir que fique acima de tudo
draw_sprite(s, 0, mx, my);

// Se houver um card sendo arrastado, desenhá-lo também no Draw GUI acima de tudo
if (variable_global_exists("dragging_card") && global.dragging_card != noone && instance_exists(global.dragging_card)) {
	var c = global.dragging_card;
	// desenha o sprite do card na posição atual da instância
	draw_sprite(c.sprite_index, c.image_index, c.x, c.y);
	// desenha o texto do card se houver
	if (variable_instance_exists(c, "card_text")) {
		scr_drawtext(c.card_text, c.card_font, global.duck_purple, -4);
	}
}