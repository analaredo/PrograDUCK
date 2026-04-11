function scr_bite() {
    with (obj_duck) {
        state = DuckState.EATING;
        alarm[0] = 30; // Duração da mordida (0.5 segundos)
        global.totalbites++;
        with (obj_gamemanager) {
           is_executing = true; 
        }
    }
}