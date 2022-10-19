if (!global.pause && !dungeonPauseCheck()) {
	depth = -y;
	if (type == "area of effect") {
		
	}
	
	if (type == "follows target") {
		if (instance_exists(target)) {
			x = target.x;
			y = target.y;
		} else
			instance_destroy();
	}
	
	if (type == "animation") {
		counter++;
		depth = -y-30;
		if (variable_instance_exists(id, "target")) {
			if (instance_exists(target)) {
				x = target.x;
				y = target.y-target.sprite_height/2;
				if (instance_exists(source) && dmg > 0 && source.currentSkill == skill && counter == image_number*2) {
					damage(target, dmg, true);
				}
				depth = -target.y-1;
			} else
				instance_destroy();
		}
		if (counter % 4 == 0) {
			image_index++;
			if (image_index > image_number - 1) {
				instance_destroy();
			}
		}
	}

	if (type == "projectile") {
		if (instance_exists(target) && instance_exists(source)) {
			direction = point_direction(x,y,target.x,target.y-(target.sprite_height/2))
			image_angle = point_direction(x,y,target.x,target.y-target.sprite_height/2);
			if (image_angle > 90 && image_angle < 270)
				image_yscale = -1;
			else
				image_yscale = 1;
			x += spd * dcos(direction);
			y -= spd * dsin(direction);
			if (point_distance(x,y,target.x,target.y-(target.sprite_height/2)) <= spd) {
				damage(target, dmg, true);
				instance_destroy();
			}
		} else
			instance_destroy();
	}
}