
// Executa o setup da fase uma vez que num_fase estiver definido
if (!fase_setup_done && num_fase != noone) {
    scr_setup_fase(num_fase);
    fase_setup_done = true;
}


startDialogue(inicio_fase);

if (room == menu || room == rm_levels || room == rm_stats) {
	audio_stop_sound(snd_music);
	if (!audio_is_playing(snd_menusong)) {
		audio_play_sound(snd_menusong,0,true);
	}
}	
else {
	audio_stop_sound(snd_menusong);
	if (!audio_is_playing(snd_music)) {
		audio_play_sound(snd_music,0,true);
	}
}	