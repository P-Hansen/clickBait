randomize();
draw_set_font(fontPixel);

global.money = 0;

//shallows
global.stickMoney = 0;
global.weedsMoney = 0;
global.frogMoney = 0;
global.fatheadMinnowMoney = 0;
global.catfishMoney = 0;

//open water
global.eelMoney = 0;
global.greenSunfishMoney = 0;
global.highFunBandedSharkMoney = 0;
global.redShinerMoney = 0;
global.smeltMoney = 0;

//middle depth
global.gobyMoney = 0;
global.largmouthBassMoney = 0;
global.tilapiaMoney = 0;
global.troutMoney = 0;
global.walleyeMoney = 0;

//deep water
global.crucianCarpMoney = 0;
global.gizzardShadMoney = 0;
global.goldenTenchMoney = 0;
global.kingSalmonMoney = 0;
global.pumpkinseedFishMoney = 0;

//depths
global.blackBassMoney = 0;
global.crappieMoney = 0;
global.daceMoney = 0;
global.loachMoney = 0;
global.plecostomusMoney = 0;

//mysterious waters
global.bluegillMoney = 0;
global.goldfishMoney = 0;
global.neonTetraMoney = 0;
global.paradiseFishMoney = 0;
global.piranhaMoney = 0;

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