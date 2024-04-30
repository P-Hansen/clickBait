/// @description Insert description here

if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
	if(mouse_check_button_released(mb_left)){
		room_goto(rmBoat);
	}
}