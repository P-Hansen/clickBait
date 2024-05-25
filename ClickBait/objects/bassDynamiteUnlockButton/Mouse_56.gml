/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= cost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	fishObject.money -= cost;
	instance_create_depth(960, 480, 10, dynamiteSpawner);
	global.dynamiteCount += 15;
	global.dynamiteUnlocked = true;
	instance_destroy(self);
}