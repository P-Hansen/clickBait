/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.pumpkinseedExplosiveCost and global.dynamiteSpawnRange[0] < global.dynamiteSpawnRange[1]){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	global.dynamiteSpawnRange[0] = global.dynamiteSpawnRange[0] + 1;
	fishObject.money -= global.pumpkinseedExplosiveCost;
	global.pumpkinseedExplosiveCost = fibonacci(global.pumpkinseedExplosiveCount);
	global.pumpkinseedExplosiveCount++;
}