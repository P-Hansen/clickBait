/// @description Insert description here

fish = noone;

function fishing(_x, _y){
	var fishOdds = [];
	for(var i = 0; i < array_length(global.water); i++){
		var object = findObject(global.water[i]);
		var odds = object.odds;
		array_push(fishOdds, odds);
	}
	
	var roll = irandom_range(1, 100);
	
	if(roll <= fishOdds[4]){
		var object = findObject(global.water[4]);
		var asset = asset_get_index(object.name);
		instance_create_depth(_x+140, _y+10, depth, asset);
	} else if (roll <=  fishOdds[4] +  fishOdds[3]){
		var object = findObject(global.water[3]);
		var asset = asset_get_index(object.name);
		instance_create_depth(_x+140, _y+10, depth, asset);
	} else if (roll <=  fishOdds[4] +  fishOdds[3] + fishOdds[2]){
		var object = findObject(global.water[2]);
		var asset = asset_get_index(object.name);
		instance_create_depth(_x+140, _y+10, depth, asset);
	} else if (roll <=  fishOdds[4] + fishOdds[3] + fishOdds[2] +  fishOdds[1]){
		var object = findObject(global.water[1]);
		var asset = asset_get_index(object.name);
		instance_create_depth(_x+140, _y+10, depth, asset);
	} else {
		var object = findObject(global.water[0]);
		var asset = asset_get_index(object.name);
		instance_create_depth(_x+140, _y+10, depth, asset);	
	}
	
	return;
}

function catchFish(){
	if(image_angle <= 0){
		image_angle += 45;
	}
	if(place_meeting(x, y, trash)){
		var trash1 = instance_place(x, y, trash);
		if(trash1.caught == false){
			trash1.direction = 120;
			trash1.speed = 10;
			trash1.alarm[1] = room_speed*0.2;
			trash1.caught = true;
		}
	} else {
		fishing(x, y);
	}
}

alarm[1] = global.autoFishSpeed;