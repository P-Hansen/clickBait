/// @description trash spawn

var offset = irandom_range(-20, 20);
instance_create_depth(room_width + 20, room_height - 180 + offset, depth, trash);

if(global.trash > 0){
	alarm[1] = room_speed*(2 + random_range(-2, 2)) + 1;
}