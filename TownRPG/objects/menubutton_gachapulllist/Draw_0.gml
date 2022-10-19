draw_self();
if (position_meeting(mouse_x, mouse_y, id)) {
	draw_set_color(c_black);
	
	draw_text(300, 280, "3 stars          50%");
	for(var i = 0; i < array_length(global.gacha3stars); i++) {
		var color = c_black;
		if(instance_exists(global.gacha3stars[i]))
			color = c_white;
		draw_sprite_ext(object_get_sprite(global.gacha3stars[i]), 0, 300+i*25, 350, 0.6, 0.6, 0, color, 1);
	}
	
	draw_text(300, 380, "4 stars          50%");
	for(var i = 0; i < array_length(global.gacha4stars); i++) {
		var color = c_black;
		if(instance_exists(global.gacha4stars[i]))
			color = c_white;
		draw_sprite_ext(object_get_sprite(global.gacha4stars[i]), 0, 300+i*25, 450, 0.6, 0.6, 0, color, 1);
	}
	
	draw_text(300, 480, "5 stars          50%");
	for(var i = 0; i < array_length(global.gacha4stars); i++) {
		var color = c_black;
		if(instance_exists(global.gacha5stars[i]))
			color = c_white;
		draw_sprite_ext(object_get_sprite(global.gacha5stars[i]), 0, 300+i*25, 550, 0.6, 0.6, 0, color, 1);
	}
}