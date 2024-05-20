randomize();
draw_set_font(fontPixel);
global.dataArray = importJson("fishData.txt");
show_debug_message(global.dataArray);

global.money = 0;
global.water = [stick, weeds, frog, fatheadMinnow, catfish];
global.fishOdds = [50, 30, 14, 4, 2];
global.waterColour = #FFFFFF; //white
global.buttonQueue = noone;

global.trash = 100;

global.autoFishSpeed = room_speed*2;
global.valueMultiplyer = 1;
global.discount = 1;
global.dynamiteSpawnRange = [1, 3];

room_goto(rmMenu);