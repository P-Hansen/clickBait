/// @description Insert description here

width = x + string_width(cost)+10;
height = y + string_height(cost)+10;
_x = x - 10;
_y = y - 5;

if(disabled == false){
	draw_roundrect_color(_x, _y, width, height, colour, colour, false);
} else {
	draw_roundrect_color(_x, _y, width, height, c_ltgray, c_ltgray, false);
}
draw_set_halign(fa_right);
draw_text(x-20, y, description);
draw_set_halign(fa_left);
draw_text(x, y, cost);