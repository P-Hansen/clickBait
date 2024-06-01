/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.gizzardShadStunCost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	global.stunLength = global.stunLength*1.05;
	fishObject.money -= global.gizzardShadStunCost;
	global.gizzardShadStunCost = fibonacci(global.gizzardShadStunCount);
	global.gizzardShadStunCount++;
}