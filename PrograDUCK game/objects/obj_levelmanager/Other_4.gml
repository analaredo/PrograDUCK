 
// Executa o setup da fase uma vez que num_fase estiver definido
if (!fase_setup_done && num_fase != noone) {
    scr_setup_fase(num_fase);
    fase_setup_done = true;
}

is_executing = false;

if (variable_instance_exists(id, "current_slot")) {
	current_slot = 0;
}


startDialogue(inicio_fase);


if (room == rm_tutorial ||room == rm_fase1 ||room == rm_fase2 ||room == rm_fase3|| room == rm_fase4) {
	audio_stop_sound(snd_menusong);
	if (!audio_is_playing(snd_music)) {
		audio_play_sound(snd_music,0,true);
	}
}	
else {
	audio_stop_sound(snd_music);
	if (!audio_is_playing(snd_menusong)) {
		audio_play_sound(snd_menusong,0,true);
	}
}	