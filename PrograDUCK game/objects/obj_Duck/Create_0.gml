//INICIALIZAÇÃO DE ESTADO

face	 = Facestate.RIGHT;
movement = DuckState.IDLE;
vel = 2;

//INICIALIZAÇÃO DE SPRITES
sprite[DuckState.IDLE, Facestate.RIGHT] = spr_duck_idle_right;
sprite[DuckState.IDLE, Facestate.LEFT] = spr_duck_idle_left;
sprite[DuckState.IDLE, Facestate.UP] = spr_duck_idle_up;
sprite[DuckState.IDLE, Facestate.DOWN] = spr_duck_idle_down;



