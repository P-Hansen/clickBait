/// @description Insert description here

if(disabled == false and mouse_x > _x and mouse_x < width and mouse_y > _y and mouse_y < height and fishObject.money >= global.walleyeOddsCost){
	if(newButtonsFlag == false){
		newButtonsFlag = true;
	}
	colour = c_white;
	alarm[1] = room_speed*0.15;
	fishObject.money -= global.walleyeOddsCost;
	fishObject.odds -= 1;
	walleyeObject.odds += 1;
	global.walleyeOddsCost = fibonacci(global.walleyeOddsCount);
	global.walleyeOddsCount++;
}