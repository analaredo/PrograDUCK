// Só executa se pode interagir




if (can_interact()) {
    event_inherited();
   scr_reset();
    
    global.totaltries += 1;
    obj_gamemanager.script_fase();
} 

