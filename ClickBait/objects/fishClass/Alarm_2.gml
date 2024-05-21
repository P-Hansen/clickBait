/// @description flashing timer

visibleFlag = !visibleFlag;
flashCount -= 1;

if(flashCount <= 0){
	instance_destroy(self, false);
}

alarm[2] = room_speed*0.2;