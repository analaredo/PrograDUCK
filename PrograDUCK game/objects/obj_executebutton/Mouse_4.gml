// Só executa se pode interagir

with (obj_duck) {
	has_food = false;
	
}	




if (can_interact()) {
    event_inherited();
   
    
    global.totaltries += 1;
    obj_levelmanager.script_fase();
} 

