/// @description Insert description here

if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
	if(mouse_check_button_released(mb_left)){
		water = instance_place(boat1Top.x, boat1Top.y, openWater);
		global.water = water.waterOdds;
		global.fishOdds = water.fishOdds;
		room_goto(rmBoat);
	}
}