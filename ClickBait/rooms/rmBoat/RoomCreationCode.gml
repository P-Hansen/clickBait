instance_create_layer(0, 0, "Instances", global.buttonQueue);
if(global.dynamiteUnlocked == true){
	instance_create_depth(960, 480, 10, dynamiteSpawner);
}