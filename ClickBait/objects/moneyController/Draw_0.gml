/// @description Insert description here


var oldFont = draw_get_font();
draw_set_font(fontReward);
draw_text(20, 10, global.money);
draw_set_font(oldFont);