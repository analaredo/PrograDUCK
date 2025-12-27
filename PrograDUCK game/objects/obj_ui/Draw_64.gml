var mgr = instance_find(obj_levelmanager, 0);

if (mgr == -4)
    exit;

var _text = mgr.texto_fase;
var _font = mgr.font_text;
var _color = mgr.color_text;
var _x = mgr.x_text;
var _y = mgr.y_text;
draw_set_font(_font);
draw_set_color(_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(_x, _y, _text);
