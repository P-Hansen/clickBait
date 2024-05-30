/// @description Insert description here

cost = 10000;
colour = c_black;
disabled = false;
description = "Unlock drag net fishing";
fishObject = findObject(4);
sprite = sprFrog;

if(global.netFlag == true){
	instance_destroy(self);
}