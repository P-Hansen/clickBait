/// @description Insert description here

if(instance_position(endX, endY, self)){
	speed = 0;
}

//preventing stacking
var _colliding = place_meeting(x, y, [tileMap]);
if _colliding {
	speed = 0;
	var _dir = direction + 180;
	x += lengthdir_x(5, _dir);
	y += lengthdir_y(5, _dir);
}