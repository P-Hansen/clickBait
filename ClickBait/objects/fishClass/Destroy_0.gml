/// @description Insert description here

if(data.value > 0){
	num = instance_create_depth(x, y, depth, number);
	num.num = data.value * global.valueMultiplyer;
	num.numColour = numberColour;
	num.size = numberSize;

	data.money += data.value * global.valueMultiplyer;
}