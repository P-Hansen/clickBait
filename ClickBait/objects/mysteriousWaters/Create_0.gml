/// @description Insert description here
name = "Mysterious Waters";
waterOdds = [stick, weeds, frog, fatheadMinnow, catfish,
		eel, greenSunfish, highFinBandedShark, redShiner, smelt,
		goby, trout, walleye, tilapia, largemouthBass,
		crucianCarp, gizzardShad, pumpkinseedFish, KingSalmon, goldenTench,
		dace, plecostomus, crappie, Loach, blackBass,
		goldfish, bluegill, neonTetra, paradiseFish, piranha];
array_shuffle_ext(waterOdds);
fishOdds = [20, 20, 20, 20, 20];
aloneFlag = true;
colourHex = #5543CB;
queue = buttonQueueMysteriousWater;

fishIds = fishFromWater("mysteriousWaters");