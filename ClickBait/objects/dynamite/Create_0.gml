/// @description Insert description here

scale = 3;
image_xscale = scale;
image_yscale = scale;

direction = 100;
speed = 10;
turn = false;
offset = irandom_range(-8, 5);
spawnRange = [1, 5];

fish = noone;
fishOdds = [];

for(var i = 0; i < array_length(global.water); i++){
	var object = findObject(global.water[i]);
	var odds = object.odds;
	array_push(fishOdds, odds);
}

alarm[1] = room_speed*3;
alarm[2] = room_speed*0.2;