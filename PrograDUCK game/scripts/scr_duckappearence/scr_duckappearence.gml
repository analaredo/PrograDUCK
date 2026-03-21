function scr_duckappearence(){
	sprite_index = sprite[state][face];
	
if (global.rainbowduck == true){	
	tone += 1;
	if (tone > 255) tone = 0;
	image_blend = make_color_hsv(tone, 255, 255);
}
else{
	tone = 0;
    image_blend = c_white;  // Volta às cores originais
}

//DECIDE QUAL ROUPA O PATO VAI USAR
if (clothes == ClothesState.PAJAMAS) {
    sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_pajamas_right;
    sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_pajamas_left;
    sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_pajamas_up;
    sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_pajamas_down;
    // WALK
    sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_walk_pajamas_right;
    sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_walk_pajamas_left;
    sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_pajamas_up;
    sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_pajamas_down;
    }

if (clothes == ClothesState.NORMAL) {
    sprite[DuckState.IDLE, FaceState.RIGHT] = spr_duck_idle_right;
    sprite[DuckState.IDLE, FaceState.LEFT] = spr_duck_idle_left;
    sprite[DuckState.IDLE, FaceState.UP] = spr_duck_idle_up;
    sprite[DuckState.IDLE, FaceState.DOWN] = spr_duck_idle_down;


    // WALK
    sprite[DuckState.WALK, FaceState.RIGHT] = spr_duck_walk_right;
    sprite[DuckState.WALK, FaceState.LEFT] = spr_duck_walk_left;
    sprite[DuckState.WALK, FaceState.UP] = spr_duck_walk_up;
    sprite[DuckState.WALK, FaceState.DOWN] = spr_duck_walk_down;
}
}