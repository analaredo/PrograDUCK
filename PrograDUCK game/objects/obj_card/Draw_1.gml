// Draw GUI event: desenha o card quando estiver sendo arrastado (fica acima de tudo)
if (state == CardState.DRAGGING) {
    // Desenha o sprite na posição do card (GUI usa coordenadas da view)
    draw_sprite(sprite_index, image_index, x, y);
    scr_drawtext(card_text, card_font, global.duck_purple, -4);
}