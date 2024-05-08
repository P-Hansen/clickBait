/// @description Insert description here

width = x + string_width(text)+10;
height = y + string_height(text)+10;
_x = x - 10;
_y = y - 5;

if(disabled == false){
	draw_roundrect_color(_x, _y, width, height, colour, colour, false);
} else {
	draw_roundrect_color(_x, _y, width, height, c_ltgray, c_ltgray, false);
}
draw_text(x, y, text);