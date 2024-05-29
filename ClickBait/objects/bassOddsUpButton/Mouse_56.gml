/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.bassOddsCost){
	if(newButtonsFlag == false){
		newButtonsFlag = true;
	}
	colour = c_white;
	alarm[1] = room_speed*0.15;
	fishObject.money -= global.bassOddsCost;
	fishObject.odds -= 1;
	bassObject.odds += 1;
	global.bassOddsCost = fibonacci(global.bassOddsCount);
	global.bassOddsCount++;
}