// Desenha o sprite normal do pato
draw_self();

// Se o pato tem comida, desenha a foodbox acima da cabeça
if (has_food) {
    var foodbox_x = x - 8;
    var foodbox_y = y - sprite_height +2; // 
    
    // Desenha o sprite da foodbox
    draw_sprite(spr_food, 0, foodbox_x, foodbox_y);
}