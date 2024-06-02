/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= cost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	var oldBoat = instance_nearest(x, y, boat1Side);
	var boatX = oldBoat.x;
	var boatY = oldBoat.y;
	instance_destroy(oldBoat);
	global.boatTop = boat1Top;
	global.boatSide = boat1Side;
	instance_create_depth(boatX, boatY, depth, boat1Side);
	fishObject.money -= cost;

}