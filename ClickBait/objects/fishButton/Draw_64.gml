/// @description Insert description here
draw_set_halign(fa_center);
if(global.enterPortalFlag == true){
	draw_text(x-10, y - 50, " Portal");
} else {
	draw_text(x-10, y - 50, string(currentWaterName));
}
draw_set_halign(fa_left);
draw_self();