/// @description Insert description here


function catchFish(){
	if(image_angle <= 0){
		image_angle += 45;
		instance_create_depth(x+140, y+10, depth, fish1);
	}
}
