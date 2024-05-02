/// @description Insert description here

if(global.fish1Money > 0){
	fish1Seen = 0;
}
if(global.fish2Money > 0){
	fish2Seen = 0;
}
if(global.fish3Money > 0){
	fish3Seen = 0;
}
if(global.fish4Money > 0){
	fish4Seen = 0;
}
if(global.fish5Money > 0){
	fish5Seen = 0;
}

//trash total
draw_set_color(c_black);
if(global.trash > 0) {
	draw_text(room_width-100, 20, string(global.trash) + " trash");
}
draw_set_color(c_white)

var oldFont = draw_get_font();
draw_set_font(fontReward);

//showing catch numbers
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

draw_set_font(oldFont);