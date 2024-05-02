/// @description Insert description here


var oldFont = draw_get_font();
draw_set_font(fontReward);

draw_sprite_ext(sprFish1, 0, 50, 20, 4, 4, 0, c_white, 1);
draw_text(100, 20, global.fish1Money);

draw_sprite_ext(sprFish2, 0, 50, 70, 4, 4, 0, c_white, 1);
draw_text(100, 70, string(global.fish2Money));

draw_sprite_ext(sprFish3, 0, 50, 120, 4, 4, 0, c_white, 1);
draw_text(100, 120, string(global.fish3Money));

draw_sprite_ext(sprFish4, 0, 50, 170, 4, 4, 0, c_white, 1);
draw_text(100, 170, string(global.fish4Money));

draw_sprite_ext(sprFish5, 0, 50, 220, 4, 4, 0, c_white, 1);
draw_text(100, 220, string(global.fish5Money));


//show catch odds
var _y = room_height-120;
draw_sprite_ext(sprFish1, 0, 550, _y, 4, 4, 0, c_white, 1);
draw_text(610, _y, string(global.fish1Odds)+"%");

draw_sprite_ext(sprFish2, 0, 720, _y, 4, 4, 0, c_white, 1);
draw_text(780, _y, string(global.fish2Odds)+"%");

draw_sprite_ext(sprFish3, 0, 890, _y, 4, 4, 0, c_white, 1);
draw_text(950, _y, string(global.fish3Odds)+"%");

draw_sprite_ext(sprFish4, 0, 1060, _y, 4, 4, 0, c_white, 1);
draw_text(1120, _y, string(global.fish4Odds)+"%");

draw_sprite_ext(sprFish5, 0, 1210, _y, 4, 4, 0, c_white, 1);
draw_text(1270, _y, string(global.fish5Odds)+"%");

draw_set_font(oldFont);