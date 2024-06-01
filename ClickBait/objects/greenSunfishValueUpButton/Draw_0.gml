/// @description Insert description here

width = x+375 + string_width(global.greenSunfishValueCost)+10;
height = y + string_height(global.greenSunfishValueCost)+10;
_x = x+375 - 10;
_y = y - 5;

if(disabled == false and fishObject.money >= global.greenSunfishValueCost){
	draw_roundrect_color(_x, _y, width, height, colour, colour, false);
} else {
	draw_roundrect_color(_x, _y, width, height, c_ltgray, c_ltgray, false);
}

draw_sprite_ext(sprite, 0, x, y+10, 1.5, 1.5, 0, c_white, 1);
draw_text_ext(x + 40, y, description, 20, 300);
draw_text(x + 375, y, global.greenSunfishValueCost);
