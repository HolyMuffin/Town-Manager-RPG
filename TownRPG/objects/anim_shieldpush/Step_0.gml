if (!global.pause && !dungeonPauseCheck()) {
	if instance_exists(source) {
		for(var i = 0; i < ds_list_size(targetList); i++) {
			var target = ds_list_find_value(targetList, i);
			if (place_meeting(x,y,target)) {
				if (random(1) < 0.2) {
					push(target, 5, point_direction(x, y, target.x, target.y), 5);
					stun(target, room_speed/2);
				}
				damage(target, dmg, true);
				ds_list_delete(targetList, i);
				i--;
			}
		}
	} else
		instance_destroy();

	image_xscale *= 1.01;
	image_yscale *= 1.01;
	image_alpha *= 0.99;
}

event_inherited();
depth = source.depth-1;