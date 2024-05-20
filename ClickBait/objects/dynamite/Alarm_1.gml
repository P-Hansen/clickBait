/// @description explode

var range = irandom_range(global.dynamiteSpawnRange[0], global.dynamiteSpawnRange[1]);
for(var i = 1; i <= range; i++){
	var roll = irandom_range(1, 100);
	
	if(roll <= fishOdds[4]){
		var object = findObject(global.water[4]);
		var asset = asset_get_index(object.name);
	} else if (roll <=  fishOdds[4] +  fishOdds[3]){
		var object = findObject(global.water[3]);
		var asset = asset_get_index(object.name);

	} else if (roll <=  fishOdds[4] +  fishOdds[3] + fishOdds[2]){
		var object = findObject(global.water[2]);
		var asset = asset_get_index(object.name);
	} else if (roll <=  fishOdds[4] + fishOdds[3] + fishOdds[2] +  fishOdds[1]){
		var object = findObject(global.water[1]);
		var asset = asset_get_index(object.name);
	} else {
		var object = findObject(global.water[0]);
		var asset = asset_get_index(object.name);
	}

	fish = instance_create_depth(x + random_range(-100, 100), y + random_range(-50, 50), depth, asset);
	fish.direction = 90;
	fish.speed = 3;
	fish.alarm[1] = 10000;
	fish.image_angle = -135;
}

audio_play_sound(sfxWaterExplosion, 1, 0);
instance_destroy(self);
