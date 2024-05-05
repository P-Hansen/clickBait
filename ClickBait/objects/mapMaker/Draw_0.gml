/// @description Insert description here

/*
X = xStart;
for(var _x = 0; _x < room_width; _x += 1){
	var Y = yStart;
	for(var _y = 0; _y < room_height; _y += 1){
		
		var _val = perlin_noise(X, Y);
		var _colour = map_value(_val, -1, 1, 0, 255);
		//var _colour = c_white;
				
		draw_set_color(make_color_rgb(_colour, _colour, _colour));
		draw_rectangle(_x, _y, _x+1, _y+1, false);
		
		Y += inc;
	}
	X += inc;
}
*/