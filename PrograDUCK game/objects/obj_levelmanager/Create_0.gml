scr_colors();
scr_variables();

num_fase = 0; //faseatual
texto_fase = noone;
x_text = 24;
y_text = 40;
font_text = enunciado_font;
color_text = global.duck_green;
slots = [];            // array que vai guardar os slots de comando
script_fase = noone;

// Armazena todos os obj_cardslot da room
with (obj_cardslot) {
    array_push(other.slots, id);
}
       
scr_setup_fase(num_fase);
                    