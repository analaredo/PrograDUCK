
function scr_drawtext(text, font, text_color, vertical_offset = 0) {
    
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(text_color);
    
    // Usa as propriedades do objeto chamador
    var sprite_x = x;
    var sprite_y = y;
    var sprite_w = sprite_width;
    var sprite_h = sprite_height;
    
    // Calcula a largura e altura máximas do texto com margens
    var max_width = sprite_w - 10; // Margem de 10 pixels
    var max_height = sprite_h - 10;
    
    // Calcula a largura e altura do texto sem quebra de linha
    var text_width = string_width(text);
    var text_height = string_height(text);
    
    // Determina a escala para ajustar o texto ao sprite
    var scale = 1;
    if (text_width > max_width || text_height > max_height) {
        scale = min(max_width / text_width, max_height / text_height);
    }
    
    // Ajusta a largura máxima para a escala
    max_width /= scale;
    
    // Desenha o texto com quebra de linha e escala
    draw_text_ext_transformed(
        sprite_x + sprite_w / 2,
        sprite_y +(( sprite_h / 2)+ vertical_offset),
        text,
        -1, // Usa separação de linha padrão
        max_width,
        scale,
        scale,
        0
    );
    
}
