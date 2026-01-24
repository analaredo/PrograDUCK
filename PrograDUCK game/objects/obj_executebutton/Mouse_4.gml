// Só executa se pode interagir

scr_reset();


if (can_interact()) {
    event_inherited();
   
    
    global.totaltries += 1;
    obj_levelmanager.script_fase();
} 

