/// @description Insert description here

y -= 4;
image_alpha -= 0.005;

var oldFont = draw_get_font();
draw_set_font(fontReward);
draw_set_halign(fa_center);

draw_text_ext_transformed_color(x, y, "+" + string(num), 1, 100, size, size, 0, numColour, numColour, numColour, numColour, image_alpha);

draw_set_halign(fa_left);
draw_set_font(oldFont);