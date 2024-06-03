/// @description Insert description here

cost = 10000;
colour = c_black;
disabled = false;
description = "unlock speed boat";
fishObject = findObject(13);
sprite = sprWalleye;

if(global.speedboatFlag == true){
	instance_destroy(self);
}