/// @description catch

var distance = point_distance(startingX, startingY, x, y);
startingX = x;
startingY = y;

distance = round(distance/100);
show_debug_message(distance);
var water = instance_place(boat1Top.x, boat1Top.y, openWater);
for(var i = 0; i < distance; i++){
	var roll = irandom_range(1, 100);
	
	if(roll <= water.fishOdds[4]){
		var object = findObject(water.fishIds[4]);
		//var asset = asset_get_index(object.name);
	} else if (roll <=  water.fishOdds[4] +  water.fishOdds[3]){
		var object = findObject(water.fishIds[3]);
		//var asset = asset_get_index(object.name);

	} else if (roll <=  water.fishOdds[4] +  water.fishOdds[3] + water.fishOdds[2]){
		var object = findObject(water.fishIds[2]);
		//var asset = asset_get_index(object.name);
	} else if (roll <=  water.fishOdds[4] + water.fishOdds[3] + water.fishOdds[2] +  water.fishOdds[1]){
		var object = findObject(water.fishIds[1]);
		//var asset = asset_get_index(object.name);
	} else {
		var object = findObject(water.fishIds[0]);
		//var asset = asset_get_index(object.name);
	}

	num = instance_create_depth(x+irandom_range(-40,40), y+irandom_range(-40,40), depth, numberWithFish);
	num.num = object.value * global.valueMultiplyer;
	var asset = asset_get_index(object.sprite);
	num.spr = asset;
	object.money += object.value * global.valueMultiplyer;
}


alarm[1] = room_speed*3;