function scr_createslots(){
		// Reconstrói o array toda vez para evitar slots duplicados.
		slots = [];
	
		// Conta quantos obj_cardslot existem
		var slot_count = instance_number(obj_cardslot);

		for (var i = 0; i < slot_count; i++) {
		    var slot_id = instance_find(obj_cardslot, i);   
		    if (instance_exists(slot_id)) {
		        show_debug_message("Adicionando slot " + string(slot_id) + " ao array");
		        array_push(slots, slot_id);
		    }
		}

}	