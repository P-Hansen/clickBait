/// @description Insert description here

buttons = [gobyValueUpButton, troutOddsUpButton,
	troutValueUpButton, troutAutoFishUpButton, tilapiaOddsUpButton,
	tilapiaValueUpButton, tilapiaValueMultiplyerButton, walleyeOddsUpButton,
	walleyeValueUpButton, walleyeSpeedboatButton, bassOddsUpButton,
	bassValueUpButton, bassDynamiteUnlockButton];
yOffset = 50;

for(var i = 0; i < array_length(buttons); i++){
	instance_create_layer(20, 40 + yOffset*i, layer, buttons[i]);
}