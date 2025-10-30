scr_colors();
scr_variables();

num_fase = 0;          // fase atual
obj_goal = noone;      // o alvo do pato (bowl, cama etc.)
slots = [];            // array que vai guardar os slots de comando
script_fase = noone;

// Armazena todos os obj_cardslot da room
with (obj_cardslot) {
    array_push(other.slots, id);
}
       
scr_setup_fase(num_fase);
                    