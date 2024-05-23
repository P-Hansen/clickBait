/// @description Insert description here

if(global.dynamiteCount > 0){
	instance_create_depth(x, y, depth, dynamite);
	global.dynamiteCount -= 1;
}

alarm[1] = global.dynamiteThrowSpeed;