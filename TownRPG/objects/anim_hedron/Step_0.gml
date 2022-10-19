event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	if (counter <= counter_max) {
		image_alpha = counter/70;
		var num = counter/70*255;
		image_blend = make_color_rgb(num, num, num);
	}

	image_angle = max(dir, image_angle-0.5);

	if (counter >= 90 && image_angle == dir) {
		x = max(targetX, x-4);
		y = min(targetY, y+8);
	}

	if (x == targetX && y == targetY) {
		counter2++;
		if (counter2 == 1) {
			var x_ = targetX-5;
			var y_ = targetY+sprite_height/2;
			for(var i = 0; i < ds_list_size(dungeon.partyList_alive); i++) {
				var inst = ds_list_find_value(dungeon.partyList_alive, i);
				if (instance_exists(source) && collision_ellipse(x_-2*radius, y_-radius, x_+2*radius, y_+radius, inst, false, false))
					if(!sidestepCheck(inst, 1))
						damage(inst, dmg, true);
			}
		}
		if (counter2 == 5)
			instance_destroy();
	}

}