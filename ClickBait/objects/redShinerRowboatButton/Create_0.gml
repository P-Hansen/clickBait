/// @description Insert description here

cost = 10000;
colour = c_black;
disabled = false;
description = "unlock rowboat";
fishObject = findObject(9);
sprite = sprRedShiner;

if(global.rowboatFlag == true){
	instance_destroy(self);
}