randomize();
draw_set_font(fontPixel);

global.money = 0;
global.fish1Money = 0;
global.fish2Money = 0;
global.fish3Money = 0;
global.fish4Money = 0;
global.fish5Money = 0;

global.water = [];
global.fishOdds = [50, 30, 14, 4, 2];
global.waterColour = #FFFFFF; //white

global.fish1Odds = 50;
global.fish2Odds = 30;
global.fish3Odds = 14;
global.fish4Odds = 4;
global.fish5Odds = 2;

global.trash = 100;

global.autoFishSpeed = room_speed*2;

room_goto(rmMenu);