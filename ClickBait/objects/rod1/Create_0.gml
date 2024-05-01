/// @description Insert description here

fish = noone;
function catchFish(){
	if(image_angle <= 0){
		image_angle += 45;
		fishing(x, y);
	}
}

alarm[1] = room_speed*3;