// Script assets have changed for v2.3.0 see

global.water = [fish1, fish2, fish3, fish4, fish5]

function fishing(_x, _y){
	var roll = irandom_range(1, 100);
	
	if(roll <= 2){
		instance_create_depth(_x+140, _y+10, depth, global.water[4]);
	} else if (roll <= 6){
		instance_create_depth(_x+140, _y+10, depth, global.water[3]);
	} else if (roll <= 20){
		instance_create_depth(_x+140, _y+10, depth, global.water[2]);
	} else if (roll <= 50){
		instance_create_depth(_x+140, _y+10, depth, global.water[1]);
	} else {
		instance_create_depth(_x+140, _y+10, depth, global.water[0]);	
	}
	
	return;
}