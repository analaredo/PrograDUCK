function scr_fail () {
 audio_play_sound(snd_fail,0, false);
	 with (obj_duck) {
	  state = DuckState.CONFUSED;
 }

}