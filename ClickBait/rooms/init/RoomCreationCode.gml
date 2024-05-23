randomize();
draw_set_font(fontPixel);
audio_master_gain(0.2);
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
global.dynamiteThrowSpeed = room_speed*5;
global.fuzeLength = room_speed*2;
global.stunLength =  room_speed*5;

room_goto(rmMenu);