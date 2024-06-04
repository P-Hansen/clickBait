/// @description Insert description here

yStart = random(1000);
xStart = random(1000);
inc = 0.06;
TILESIZE = 16;


//places tiles based on perlin noise
X = xStart;
for(var _x = 0; _x < room_width; _x += TILESIZE){
	var Y = yStart;
	for(var _y = 0; _y < room_height; _y += TILESIZE){
		
		var _val = perlin_noise(X, Y);
		
		if(_val <= -0.25){
			instance_create_layer(_x, _y, layer, grass);
		} else if(_val <= -0.1){
			instance_create_layer(_x, _y, layer, sand);
		} else if (_val <= 0.05){
			instance_create_layer(_x, _y, layer, shallows);
		} else if (_val <= 0.4){
			instance_create_layer(_x, _y, layer, openWater);
		} else if (_val <= 0.5){
			instance_create_layer(_x, _y, layer, middleDepth);
		} else if (_val <= 0.7){
			instance_create_layer(_x, _y, layer, deepWater);
		} else {
			instance_create_layer(_x, _y, layer, depthsWater);
		}
		
		Y += inc;
	}
	X += inc;
}

/*
//mysterious waters
var rollx = irandom_range(0, room_width);
var rolly = irandom_range(0, room_height);
mysteryPool(rollx, rolly);
*/

var tile = instance_nearest(room_width/2, room_height/2, openWater);
boatX = tile.x;
boatY = tile.y;
boatAngle = 0;


/*
//finding single tiles
with(openWater){
	function tileCheck(newTile){
		if((aloneFlag == true) and (newTile.object_index == object_index)){
			aloneFlag = false;
		}
	}
	
	//top row
	var tile = instance_nearest(x-8, y-8, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x, y-8, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+16+8, y-8, openWater);
	tileCheck(tile);
	//middle row
	var tile = instance_nearest(x-8, y, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+16+8, y, openWater);
	tileCheck(tile);
	//bottom row
	var tile = instance_nearest(x-8, y+16+8, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x, y+16+8, openWater);
	tileCheck(tile);
	var tile = instance_nearest(x+16+8, y+16+8, openWater);
	tileCheck(tile);
}

with(openWater){
	if(aloneFlag == true){
		instance_create_layer(x, y, layer, mysteriousWaters);
		instance_destroy(self);
	}
}
*/

/*
var layerId = layer_get_id("Tiles_1");
var tilemap = layer_tilemap_create(layerId, x, y, TileSet2, 16, 16);
var tileId = tilemap_get_at_pixel(tilemap, 1, 1);
show_debug_message(tileId);
tilemap_set_at_pixel(tilemap, tileId, 2, 2);
*/