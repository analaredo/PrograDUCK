function scr_win () {
	
 with (obj_levelmanager){
	 
	 startDialogue(sucess_dialogue);
	 
	 
	 var room_index = -1;
	 var current_level_index = -1;
	 
	 switch(room) {
		 case rm_fase1:
			 current_level_index = 0; // Fase 1
			 room_index = 1; // Libera fase 2 (índice 1)
			 break;
		 case rm_fase2:
			 current_level_index = 1; // Fase 2
			 room_index = 2; // Libera fase 3 (índice 2)
			 break;
		 case rm_fase3:
			 current_level_index = 2; // Fase 3
			 room_index = 3; // Libera fase 4 (índice 3)
			 break;
		 case rm_fase4:
			 current_level_index = 3; // Fase 4
			 room_index = -1; // Última fase
			 break;
		 default:
			 room_index = -1; // Não libera nada
			 break; 
	 }  
	 
	 // Marca a fase atual como completada (apenas uma vez)
	 if (current_level_index != -1 && global.levels_completed[current_level_index] == 0) {
		 global.levels_completed[current_level_index] = 1;
		 global.levelscompleted++; // Incrementa apenas se for a primeira vez
		 
		 // Atualiza a porcentagem de conclusão
		 var total_levels = array_length(global.levels_completed);
		 var completed_count = 0;
		 for (var i = 0; i < total_levels; i++) {
			 if (global.levels_completed[i] == 1) {
				 completed_count++;
			 }
		 }
		 global.completion_percentage = (total_levels > 0) ? round((completed_count / total_levels) * 100) : 0;
	 }
	 
	 // Libera a próxima fase se ela existir
	 if (room_index != -1 && room_index < array_length(global.levels)) {
		 global.levels[room_index] = 1;
		 
	 }
 }
 audio_play_sound(snd_win,0, false);

}