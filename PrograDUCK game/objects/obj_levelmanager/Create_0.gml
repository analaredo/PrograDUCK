scr_colors();
scr_variables();

num_fase = 0;
texto_fase = noone;
x_text = 24;
y_text = 40;
font_text = enunciado_font;
color_text = global.duck_green;
slots = [];            
script_fase = noone;

// Conta quantos obj_cardslot existem
var slot_count = instance_number(obj_cardslot);
show_debug_message("=== TOTAL DE obj_cardslot NA ROOM: " + string(slot_count) + " ===");

// Método alternativo: usar loop manual em vez de with
show_debug_message("=== USANDO LOOP MANUAL ===");
for (var i = 0; i < slot_count; i++) {
    var slot_id = instance_find(obj_cardslot, i);
    show_debug_message("Slot " + string(i) + " encontrado: " + string(slot_id));
    
    if (instance_exists(slot_id)) {
        show_debug_message("Adicionando slot " + string(slot_id) + " ao array");
        array_push(slots, slot_id);
    }
}

show_debug_message("=== SLOTS NO ARRAY: " + string(array_length(slots)) + " ===");

// Mostra todos os elementos do array
for (var i = 0; i < array_length(slots); i++) {
    show_debug_message("slots[" + string(i) + "] = " + string(slots[i]));
}

scr_setup_fase(num_fase);