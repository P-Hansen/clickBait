/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.gizzardShadValueCost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	fishObject.value += 1;
	fishObject.money -= global.gizzardShadValueCost;
	global.gizzardShadValueCost = fibonacci(global.gizzardShadValueCount);
	global.gizzardShadValueCount++;
}