/// @description Insert description here

water = instance_place(global.boatTop.x, global.boatTop.y, openWater);
currentWaterName = water.name;

if(global.enterPortalFlag == true){
	image_index = 1;
} else {
	image_index = 0;
}

if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
	if(mouse_check_button_released(mb_left)){
		if(global.enterPortalFlag == true){
			game_restart();
		} else {
			global.water = water.fishIds;
			//global.fishOdds = water.fishOdds;
			global.waterColour = water.colourHex;
			global.buttonQueue = water.queue;
			room_goto(rmBoat);
		}
	}
}