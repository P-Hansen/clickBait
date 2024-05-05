/// @description Insert description here

perlin_noise_surface = surface_create(room_width, room_height);
not_drawn = true;

yStart = random(1000);
xStart = random(1000);

inc = 0.1;

X = xStart;
for(var _x = 0; _x < room_width; _x += 32){
	var Y = yStart;
	for(var _y = 0; _y < room_height; _y += 32){
		
		var _val = perlin_noise(X, Y);
		
		if(_val <= 0.000001){
			instance_create_layer(_x, _y, layer, sand);
		} else if (_val <= 0.05){
			instance_create_layer(_x, _y, layer, shallows);
		} else if (_val <= 0.4){
			instance_create_layer(_x, _y, layer, openWater);
		} else if (_val <= 0.6){
			instance_create_layer(_x, _y, layer, pool);
		} else if (_val <= 0.8){
			instance_create_layer(_x, _y, layer, deepWater);
		} else {
			instance_create_layer(_x, _y, layer, deepDeepWater);
		}
		
		Y += inc;
	}
	X += inc;
}