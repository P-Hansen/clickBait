// Script assets have changed for v2.3.0 see

function fishing(_x, _y){
	var roll = irandom_range(1, 100);
	
	if(roll <= global.fish5Odds){
		instance_create_depth(_x+140, _y+10, depth, global.water[4]);
	} else if (roll <= global.fish4Odds+global.fish5Odds){
		instance_create_depth(_x+140, _y+10, depth, global.water[3]);
	} else if (roll <= global.fish3Odds+global.fish4Odds+global.fish5Odds){
		instance_create_depth(_x+140, _y+10, depth, global.water[2]);
	} else if (roll <= global.fish2Odds+global.fish3Odds+global.fish4Odds+global.fish5Odds){
		instance_create_depth(_x+140, _y+10, depth, global.water[1]);
	} else {
		instance_create_depth(_x+140, _y+10, depth, global.water[0]);	
	}
	
	return;
}