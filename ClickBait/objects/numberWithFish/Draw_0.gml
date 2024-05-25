/// @description Insert description here

y -= 4;
image_alpha -= 0.005;

var oldFont = draw_get_font();
draw_set_font(fontReward);
draw_set_halign(fa_right);

draw_text_ext_transformed_color(x, y, "+" + string(num), 1, 100, size, size, 0, numColour, numColour, numColour, numColour, image_alpha);

draw_set_halign(fa_left);
draw_sprite_ext(spr, 0, x, y, 3, 3, 0, c_white, 1);

draw_set_font(oldFont);