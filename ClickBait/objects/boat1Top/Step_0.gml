/// @description Insert description here

if(instance_position(endX, endY, self)){
	speed = 0;
}

if(keyboard_check(vk_left)){
	direction = 180;
	image_angle = direction;
	speed = 3;
}
if(keyboard_check(vk_right)){
	direction = 0;
	image_angle = direction;
	speed = 3;
}
if(keyboard_check(vk_up)){
	direction = 90;
	image_angle = direction;
	speed = 3;
}
if(keyboard_check(vk_down)){
	direction = 270;
	image_angle = direction;
	speed = 3;
}

//preventing stacking
var _colliding = place_meeting(x, y, [tileMap]);
if _colliding {
	speed = 0;
	var _dir = direction + 180;
	x += lengthdir_x(5, _dir);
	y += lengthdir_y(5, _dir);
}

//dragging net
if(instance_exists(dragNet)){
	dragNet.x = x;
	dragNet.y = y;
	dragNet.image_angle = image_angle;
}