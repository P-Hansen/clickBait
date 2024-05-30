/// @description Insert description here

cost = 10000;
colour = c_black;
disabled = false;
description = "Unlock dynamite fishing";
fishObject = findObject(15);
sprite = sprLargemouthBass;

if(global.dynamiteUnlocked == true){
	instance_destroy(self);
}