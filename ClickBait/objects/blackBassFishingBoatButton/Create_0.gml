/// @description Insert description here

cost = 10000;
colour = c_black;
disabled = false;
description = "unlock fishing boat";
fishObject = findObject(25);
sprite = sprBlackBass;

if(global.fishingBoat == true){
	instance_destroy(self);
}