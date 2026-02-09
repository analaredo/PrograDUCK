/// Customizable Properties

// Input
confirm_key = vk_enter; // button to press to go to the next page
up_key = vk_up; // button to press to move up in options
down_key = vk_down; // button to press to move down in options
max_input_delay = 5; // how many frames to ignore input
input_delay = max_input_delay;

// Position
margin_left = 32; // margem da esquerda
margin_right = 200; // margem da direita (maior para não ficar muito comprida)
margin_bottom = 10; // margem de baixo
padding = 16; // how much space things inside the textbox get - aumentando para mais espaço
width = display_get_gui_width() - margin_left - margin_right;
height = sprite_get_height(spr_portrait); // Match height with spr_portrait

x = margin_left; // Alinhado à esquerda
y = display_get_gui_height() - height - margin_bottom;

// Text
text_font = dialogue_font;
text_color = #47461D;
text_speed = 0.6;
text_x = padding;
text_y = padding * 2 + 40; // Abaixando o texto 10 pixels
text_width = width - padding * 2;

// Portrait
portrait_x = padding;
portrait_y = padding;

// Speaker
speaker_x = sprite_get_width(spr_portrait) + padding; // Posicionar ao lado do portrait
speaker_y = 34;
speaker_font = card_font;
speaker_color = c_white;

// Option
option_x = padding;
option_y = -50; 
option_spacing = 120; // Aumentando espaçamento entre opções
option_selection_indent = 80;
option_width = sprite_get_width(spr_option)*1.2; // Largura maior
option_height =  sprite_get_height(spr_option)*0.60; // Altura maior para os botões
option_text_x = 30;
option_text_color = #47461D; 

/// Private properties
/*** LOOK BUT DO NOT EDIT! ***/
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;
last_sound_progress = 0; // Rastreia a última posição onde tocou o som
sound_cooldown = 0; // Cooldown para não tocar som muito rápido

portrait_sprite = -1;
portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(spr_name);
speaker_height = sprite_get_height(spr_name);

options = [];
current_option = 0;
option_count = 0;

/// Methods
/*** Generally you never need to call these manually ***/

// Start a conversation
setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
		
	next();
}

// Move to the next action, or close the textbox if out of actions
next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

// Set the text that should be typed out
setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
	last_sound_progress = 0; // Reseta o rastreamento de som
}