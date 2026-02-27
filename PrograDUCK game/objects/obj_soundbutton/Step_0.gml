if (state = true){
	sprite_index = spr_sound_on;
	audio_master_gain(1);
}
else {
	sprite_index = spr_sound_off;
	audio_master_gain(0);
}	