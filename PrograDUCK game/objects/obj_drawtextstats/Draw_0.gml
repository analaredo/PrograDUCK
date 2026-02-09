// Atualiza dinamicamente se configurado
if (update_dynamic && stat_variable != "") {
    var stat_value = variable_global_get(stat_variable);
    text_content = stat_label + string(stat_value) + stat_suffix;
}

draw_set_font(text_font);
draw_set_color(text_color);
draw_text_ext(x,y, text_content, line_sep, text_width);