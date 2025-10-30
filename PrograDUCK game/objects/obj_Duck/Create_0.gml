//INICIALIZAÇÃO DE ESTADO

face	 = FaceState.RIGHT;
state = DuckState.IDLE;
target = noone;
spd = 2;

//INICIALIZAÇÃO DE SPRITES
sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_up;
sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_down;


// Temporariamente, use os sprites de IDLE para WALK
sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.WALK, FaceState.UP] = spr_duck_idle_up;
sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_idle_down;

