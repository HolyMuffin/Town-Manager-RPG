// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawHealthBar() {
	draw_set_color(c_red);
	
	var width = abs(sprite_width)-abs(sprite_width)%10;
	
	//draw_text(x-11,y-50, "name"); // and figure out how to resize
	draw_rectangle(x-width/2, y-sprite_height-6, x+width/2, y-sprite_height-4, false);
	
	var hppercent = hp/hp_max;

	//health bar color
	if (reanimated)
		draw_set_color(c_black);
	else if (healedCounter >= 1)
		draw_set_color(c_lime);
	else if (burned >= hp_max/500)
		draw_set_color(c_orange);
	else if (poisoned >= hp_max/500)
		draw_set_color(global.c_poison);
	else
		draw_set_color(c_green);
	
	//drawcurrenthealth
	if (hp > 0)
		draw_rectangle(x-width/2, y-sprite_height-6, x+(width*hppercent)-width/2, y-sprite_height-4, false);
	
	//draw shield
	if (shield > hp_max/width) {
		var shieldpercent = min(1, shield/hp_max);
		draw_set_color(c_aqua);
		draw_rectangle(x-width/2, y-sprite_height-6, x+(width*shieldpercent)-width/2, y-sprite_height-4, true);
	}
	
}