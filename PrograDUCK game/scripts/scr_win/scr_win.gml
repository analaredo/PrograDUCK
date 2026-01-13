function scr_win () {
 with (obj_levelmanager){
	 // Mapeia a room atual para o índice correto
	 var room_index = -1;
	 
	 switch(room) {
		 case rm_fase1:
			 room_index = 1; // Libera fase 2 (índice 1)
			 break;
		 case rm_fase2:
			 room_index = 2; // Libera fase 3 (índice 2)
			 break;
		 case rm_fase3:
			 room_index = 3; // Libera fase 4 (índice 3)
			 break;
		 default:
			 room_index = -1; // Não libera nada
			 break; 
	 }  
	 
	 // Libera a próxima fase se ela existir
	 if (room_index != -1 && room_index < array_length(global.levels)) {
		 global.levels[room_index] = 1;
		 global.levelscompleted++;
	 }
 }
 

}