// Get input
var confirm = keyboard_check_pressed(confirm_key);

// Diminui o cooldown do som
if (sound_cooldown > 0) {
	sound_cooldown--;
}

// Type out the text
var old_progress = text_progress;
text_progress = min(text_progress + text_speed, text_length);

// Toca som apenas quando uma nova letra aparece e o cooldown acabou
if (floor(text_progress) > floor(last_sound_progress) && text_progress < text_length && sound_cooldown <= 0) {
	var char = string_char_at(text, floor(text_progress));
	// Não toca som para espaços e quebras de linha
	if (char != " " && char != "\n") {
		audio_play_sound(snd_duckbip, 0, false);
		sound_cooldown = 3; // 3 frames de cooldown entre sons
	}
	last_sound_progress = text_progress;
}

// Ignore inputs when delay is active
if (input_delay > 0) {
	input_delay--;
	exit;
}

// Are we finished typing?
if (text_progress == text_length) {
	if (option_count > 0) {
		var up = keyboard_check_pressed(up_key);
		var down = keyboard_check_pressed(down_key);
		
		// Cycle through available options
		var change =  up - down;
		if (change != 0) {
			current_option += change;
		
			// Wrap to first and last option
			if (current_option < 0)
				current_option = option_count - 1;
			else if (current_option >= option_count)
				current_option = 0;
		}
		
		// Select an option!
		if (confirm) {
			var option = options[current_option];
			options = [];
			option_count = 0;
			
			option.act(id);
		}
	}
	else if (confirm) {
		next();
	}
}
else if (confirm) {
	text_progress = text_length;
}