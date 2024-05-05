/// @description Insert description here

yStart = random(1000);
xStart = random(1000);
inc = 0.15;

//places tiles based on perlin noise
X = xStart;
for(var _x = 0; _x < room_width; _x += 32){
	var Y = yStart;
	for(var _y = 0; _y < room_height; _y += 32){
		
		var _val = perlin_noise(X, Y);
		
		if(_val <= -0.3){
			instance_create_layer(_x, _y, layer, grass);
		} else if(_val <= -0.1){
			instance_create_layer(_x, _y, layer, sand);
		} else if (_val <= 0.05){
			instance_create_layer(_x, _y, layer, shallows);
		} else if (_val <= 0.4){
			instance_create_layer(_x, _y, layer, openWater);
		} else if (_val <= 0.5){
			instance_create_layer(_x, _y, layer, pool);
		} else if (_val <= 0.7){
			instance_create_layer(_x, _y, layer, deepWater);
		} else {
			instance_create_layer(_x, _y, layer, deepDeepWater);
		}
		
		Y += inc;
	}
	X += inc;
}
/*
//sand edge eater
with(sand){
	function tileCheck(newTile){
		if(newTile.object_index != sand){
			destroyFlag = true;
		}
	}
	//top row
	var tile = instance_nearest(x-16, y-16, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x, y-16, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+32+16, y-16, openWater);
	tileCheck(tile);
	//middle row
	var tile = instance_nearest(x-16, y, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+32+16, y, openWater);
	tileCheck(tile);
	//bottom row
	var tile = instance_nearest(x-16, y+32+16, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x, y+32+16, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+32+16, y+32+16, openWater);
	tileCheck(tile);

}
with(sand){
	if(destroyFlag == true){
		instance_create_layer(x, y, layer, shallows);
		instance_destroy(self);
	}
}
*/