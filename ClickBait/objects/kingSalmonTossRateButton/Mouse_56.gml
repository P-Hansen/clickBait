/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.salmonTossCost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	global.dynamiteThrowSpeed = global.dynamiteThrowSpeed*0.95;
	fishObject.money -= global.salmonTossCost;
	global.salmonTossCost = fibonacci(global.salmonTossCount);
	global.salmonTossCount++;
}