/// @description Insert description here

fish = noone;
function catchFish(){
	if(image_angle <= 0){
		image_angle += 45;
	}
	if(place_meeting(x, y, trash)){
		var trash1 = instance_place(x, y, trash);
		if(trash1.caught == false){
			trash1.direction = 120;
			trash1.speed = 10;
			trash1.alarm[1] = room_speed*0.2;
			trash1.caught = true;
		}
	} else {
		fishing(x, y);
	}
}

alarm[1] = global.autoFishSpeed;