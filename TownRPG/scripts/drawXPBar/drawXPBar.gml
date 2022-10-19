function drawXPBar() {
	draw_set_color(c_blue);
	
	var width = abs(sprite_width)-abs(sprite_width)%10;
	
	//draw_text(x-11,y-50, "name"); // and figure out how to resize
	draw_rectangle(x-width/2, y-sprite_height-3, x+width/2, y-sprite_height-2, false);
	
	var xppercent = xp/xpReq;
	draw_set_color(c_yellow);
	if (xp > 0)
		draw_rectangle(x-width/2, y-sprite_height-3, x+(width*xppercent)-width/2, y-sprite_height-2, false);
	}