/// @description Insert description here

if(global.netFlag == true){
	dragNet = instance_create_depth(x, y, depth, net);
} else {
	dragNet = noone;
}

speed = 0;