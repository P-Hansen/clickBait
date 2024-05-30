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
//shallows
global.catfishMultiplyerCount = 1;
global.catfishMultiplyerCost = 1;

//open water
global.netCatchOdds = 5;
//middle depth
global.gobyCount = 1;
global.gobyCost = 1;
global.bassOddsCount = 1;
global.bassOddsCost = 1;
global.bassValueCount = 1;
global.bassValueCost = 1;
global.tilapiaOddsCost = 1;
global.tilapiaOddsCount = 1;
global.tilapiaMultiplyerCost = 1;
global.tilapiaMultiplyerCount = 1;
global.tilapiaValueCost = 1;
global.tilapiaValueCount = 1;
global.troutAutofishCount = 1;
global.troutAutofishCost = 1;
global.troutOddsCount = 1;
global.troutOddsCost = 1;
global.troutValueCount = 1;
global.troutValueCost = 1;
global.walleyeOddsCount = 1;
global.walleyeOddsCost = 1;
global.walleyeValueCount = 1;
global.walleyeValueCost = 1;

global.autoFishSpeed = room_speed*2;
global.valueMultiplyer = 1;
global.discount = 1;
//deep water
global.dynamiteSpawnRange = [1, 3];
global.dynamiteThrowSpeed = room_speed*5;
global.fuzeLength = room_speed*2;
global.stunLength =  room_speed*5;
global.dynamiteCount = 0;
global.dynamiteUnlocked = false;



room_goto(rmMenu);