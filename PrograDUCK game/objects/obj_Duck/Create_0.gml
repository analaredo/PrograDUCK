//INICIALIZAÇÃO DE ESTADOS BASICOS
face = FaceState.DOWN;
state = DuckState.IDLE;
clothes = ClothesState.NORMAL;
initial_clothes = clothes;
initial_x = x;
initial_y = y;
current_action = noone;
fill_step = 0;
target = noone;
spd = 2 ;
arrived = false;
has_food = false;

//INICIALIZAÇÃO DE NECESSIDADES
is_hungry = true;

//INICIALIZAÇÃO DE SPRITES
sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_up;
sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_down;


// WALK
sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_walk_right;
sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_walk_left;
sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_up;
sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_down;

//CONFUSED
sprite[DuckState.CONFUSED, FaceState.RIGHT] = spr_duck_confused_right;
sprite[DuckState.CONFUSED, FaceState.LEFT] = spr_duck_confused_right;
sprite[DuckState.CONFUSED, FaceState.UP] = spr_duck_confused_right;
sprite[DuckState.CONFUSED, FaceState.DOWN] = spr_duck_confused_right;

//EATING
sprite[DuckState.EATING, FaceState.RIGHT] = spr_duck_idle_right;
sprite[DuckState.EATING, FaceState.LEFT] = spr_duck_idle_left;
sprite[DuckState.EATING, FaceState.UP] = spr_duck_idle_up;
sprite[DuckState.EATING, FaceState.DOWN] = spr_duck_idle_down;


