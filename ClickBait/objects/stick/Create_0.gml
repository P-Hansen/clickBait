/// @description Insert description here
event_inherited();
scale = 4;
image_xscale = scale;
image_yscale = scale;
image_index = irandom_range(0, 2);

data = findObject(1);

direction = 120;
speed = 10;
turn = false;
value = 0;
numberColour = c_white;
numberSize = 1;

alarm[1] = room_speed*0.2;