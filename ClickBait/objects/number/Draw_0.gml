/// @description Insert description here

y -= 1;
image_alpha -= 0.005;

var oldFont = draw_get_font();
draw_set_font(fontReward);
draw_text_ext_color(x, y, "+" + string(num), 1, 100, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(oldFont);