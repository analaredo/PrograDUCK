//INICIALIZAÇÃO DE ESTADOS BASICOS
face	 = FaceState.RIGHT;
current_action = noone;
fill_step = 0;
state = DuckState.IDLE;
target = noone;
spd = 1;

//INICIALIZAÇÃO DE NECESSIDADES
is_hungry = true;

//INICIALIZAÇÃO DE SPRITES
sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_up;
sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_down;


// Temporariamente, use os sprites de IDLE para WALK
sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_up;
sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_down;

// Sprites para o estado CONFUSED
sprite[DuckState.CONFUSED, FaceState.RIGHT] = spr_duck_confused_right;
sprite[DuckState.CONFUSED, FaceState.LEFT] = spr_duck_confused_left;
sprite[DuckState.CONFUSED, FaceState.UP] = spr_duck_confused_up;
sprite[DuckState.CONFUSED, FaceState.DOWN] = spr_duck_confused_down;

