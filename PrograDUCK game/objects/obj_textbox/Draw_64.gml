// Draw the box
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

var draw_text_x = x;
var draw_text_y = y;
var draw_text_width = text_width;

var finished = text_progress == text_length;

// Portrait
if (sprite_exists(portrait_sprite)) {
	// Shrink text width by the width the portrait will take up
	draw_text_width -= portrait_width + portrait_x + padding;
	
	// spr_portrait always starts at textbox x position
	var draw_portrait_x = x;
	var draw_portrait_y = y + height - sprite_get_height(spr_portrait);
	var draw_portrait_xscale = 1;
	
	// What side is the portrait on?
	if (portrait_side == PORTRAIT_SIDE.LEFT) {
		// Shift the text over when the portrait is on the left
		draw_text_x += portrait_width + padding;
	}
	else {
		// Shift the portrait itself over when it is on the right
		draw_portrait_x = x + width - portrait_width;
		draw_portrait_xscale = -1;
	}
	
	// Draw portrait backing at bottom of textbox
	draw_sprite(spr_portrait, 0, draw_portrait_x, draw_portrait_y);
	
	// Animate the portrait when typing
	var subimg = 0;
	if (!finished)
		subimg = (text_progress / text_speed) * (sprite_get_speed(portrait_sprite) / game_get_speed(gamespeed_fps));
		
	// Calculate scale to make character portrait fit into spr_portrait frame
	var char_portrait_width = sprite_get_width(portrait_sprite);
	var char_portrait_height = sprite_get_height(portrait_sprite);
	var frame_width = sprite_get_width(spr_portrait);
	var frame_height = sprite_get_height(spr_portrait);
	
	var scale_x = (frame_width / char_portrait_width) * 0.9; // Diminuir 10%
	var scale_y = (frame_height / char_portrait_height) * 0.9; // Diminuir 10%
	
	// Calculate center offset for horizontal positioning
	var scaled_portrait_width = char_portrait_width * abs(scale_x);
	var center_offset_x = (frame_width - scaled_portrait_width) / 2;
	
	// Character portrait centered in spr_portrait frame
	draw_sprite_ext(portrait_sprite, subimg,
		draw_portrait_x + center_offset_x, draw_portrait_y + sprite_get_height(spr_portrait) - 3,
		draw_portrait_xscale * scale_x, scale_y, 0, c_white, 1);
}

// Speaker
if (speaker_name != "") {
	// Expand the nameplate if the name is wider than the default width
	var name_w = max(string_width(speaker_name), speaker_width);
	
	// Position speaker nameplate next to the portrait
	var speaker_draw_x = x;
	if (portrait_side == PORTRAIT_SIDE.LEFT) {
		speaker_draw_x = x + speaker_x;
	} else {
		speaker_draw_x = x + width - speaker_x - name_w;
	}
	
	draw_sprite_stretched(spr_name, 0, speaker_draw_x, y + speaker_y - speaker_height / 2, name_w, speaker_height);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(speaker_font);
	draw_set_color(speaker_color);
	draw_text(speaker_draw_x + name_w / 2, y + speaker_y, speaker_name);
}

// Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);
type(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, draw_text_width);

// Options
if (finished && option_count > 0) {
	draw_set_valign(fa_middle);
	draw_set_color(option_text_color);
	for (var i = 0; i < option_count; i++) {
		var opt_x = x + option_x;
		var opt_y = y + option_y - i * option_spacing;
		
		// Selected option is indented with an arrow
		if (i == current_option) {
			// Desenhar a seta na posição original
			draw_sprite(spr_option_arrow, 0, opt_x, opt_y - option_height);
			// Deslocar a opção para a direita
			opt_x += option_selection_indent;
		}
		
		// Desenhar o botão (na posição deslocada se selecionado)
		draw_sprite_stretched(spr_option, 0, opt_x, opt_y - option_height, option_width, option_height);
		
		// Texto na posição deslocada
		draw_text(opt_x + option_text_x, opt_y - option_height / 2, options[i].text);
	}
}