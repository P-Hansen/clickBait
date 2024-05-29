/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.troutOddsCost){
	if(newButtonsFlag == false){
		newButtonsFlag = true;
	}
	colour = c_white;
	alarm[1] = room_speed*0.15;
	fishObject.money -= global.troutOddsCost;
	fishObject.odds -= 1;
	troutObject.odds += 1;
	global.troutOddsCost = fibonacci(global.troutOddsCount);
	global.troutOddsCount++;
}