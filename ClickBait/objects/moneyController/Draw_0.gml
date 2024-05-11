/// @description Insert description here

//trash total
draw_set_color(c_black);
if(global.trash > 0) {
	draw_text(room_width-115, 20, string(global.trash) + " trash");
}
draw_set_color(c_white)

/*
moneyArray = [global.stickMoney, global.weedsMoney, global.frogMoney, global.fatheadMinnowMoney, global.catfishMoney,
global.eelMoney, global.greenSunfishMoney, global.highFunBandedSharkMoney, global.redShinerMoney, global.smeltMoney,
global.gobyMoney, global.largmouthBassMoney, global.tilapiaMoney, global.troutMoney, global.walleyeMoney,
global.crucianCarpMoney, global.gizzardShadMoney, global.goldenTenchMoney, global.kingSalmonMoney, global.pumpkinseedFishMoney,
global.blackBassMoney, global.crappieMoney, global.daceMoney, global.loachMoney, global.plecostomusMoney,
global.bluegillMoney, global.goldfishMoney, global.neonTetraMoney, global.paradiseFishMoney, global.piranhaMoney];

for(var i = 0; i < array_length(moneyArray); i++){
	if(moneyArray[i] > 0){
		var offset = i*23;
		draw_sprite_ext(spriteArray[i], 0, room_width-75, 43 + offset, 1.5, 1.5, 0, c_white, 1);
		draw_text(room_width-50, 40 + offset, string(moneyArray[i]));
	}
}
*/

//showing all fish totals
for(var i = 0; i < array_length(global.dataArray); i++){
	if(global.dataArray[i].money > 0){
		var offset = i*23;
		var spr = asset_get_index(global.dataArray[i].sprite);
		draw_sprite_ext(spr, 0, room_width-75, 43 + offset, 1.5, 1.5, 0, c_white, 1);
		draw_text(room_width-50, 40 + offset, string(global.dataArray[i].money));
	}
}

var oldFont = draw_get_font();
draw_set_font(fontReward);

//showing catch numbers
/*
draw_sprite_ext(object_get_sprite(global.water[0]), fish1Seen, 50, 20, 4, 4, 0, c_white, 1);
draw_text(100, 20, global.fish1Money);

draw_sprite_ext(object_get_sprite(global.water[1]), fish2Seen, 50, 70, 4, 4, 0, c_white, 1);
draw_text(100, 70, string(global.fish2Money));

draw_sprite_ext(object_get_sprite(global.water[2]), fish3Seen, 50, 120, 4, 4, 0, c_white, 1);
draw_text(100, 120, string(global.fish3Money));

draw_sprite_ext(object_get_sprite(global.water[3]), fish4Seen, 50, 170, 4, 4, 0, c_white, 1);
draw_text(100, 170, string(global.fish4Money));

draw_sprite_ext(object_get_sprite(global.water[4]), fish5Seen, 50, 220, 4, 4, 0, c_white, 1);
draw_text(100, 220, string(global.fish5Money));
*/

//fish odds
startingX = 550;
var _y = room_height-120;
for(var i = 0; i < array_length(global.water); i++){
	var fishObject = findObject(global.water[i]);
	var offset = i*23;
	var spr = asset_get_index(fishObject.sprite);
	draw_sprite_ext(spr, fish1Seen, startingX, _y, 4, 4, 0, c_white, 1);
	draw_text(startingX + 60, _y, string(fishObject.odds)+"%");
	startingX += 170;
}
/*
//show catch odds
var _y = room_height-120;
draw_sprite_ext(object_get_sprite(global.water[0]), fish1Seen, 550, _y, 4, 4, 0, c_white, 1);
draw_text(610, _y, string( global.fishOdds[0])+"%");

draw_sprite_ext(object_get_sprite(global.water[1]), fish2Seen, 720, _y, 4, 4, 0, c_white, 1);
draw_text(780, _y, string( global.fishOdds[1])+"%");

draw_sprite_ext(object_get_sprite(global.water[2]), fish3Seen, 890, _y, 4, 4, 0, c_white, 1);
draw_text(950, _y, string( global.fishOdds[2])+"%");

draw_sprite_ext(object_get_sprite(global.water[3]), fish4Seen, 1060, _y, 4, 4, 0, c_white, 1);
draw_text(1120, _y, string( global.fishOdds[3])+"%");

draw_sprite_ext(object_get_sprite(global.water[4]), fish5Seen, 1210, _y, 4, 4, 0, c_white, 1);
draw_text(1270, _y, string( global.fishOdds[4])+"%");
*/
draw_set_font(oldFont);