/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= cost){
	colour = c_white;
	alarm[1] = room_speed*0.15;
	//get old boat data and destroy
	var oldBoat = instance_nearest(x, y, boat1Side);
	var boatX = oldBoat.x;
	var boatY = oldBoat.y;
	instance_destroy(oldBoat);
	//create new boat and replace global variables for spawners
	instance_create_depth(boatX, boatY, depth, speedBoatSide);
	global.boatTop = speedBoatTop;
	global.boatSide = speedBoatSide;
	//take money keep button from spawning and destroy button
	fishObject.money -= cost;
	global.speedboatFlag = true;
	instance_destroy(self);
}