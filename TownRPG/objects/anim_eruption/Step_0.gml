if (!global.pause && !dungeonPauseCheck()) {
	if (time > 0) {
		time--;
		x += hSpd;
		y += vSpd; // backwards cuz y axis is flipped
		vSpd -= grav;
		image_angle = point_direction(0, 0, hSpd, vSpd);
		shadowY += shadowSpd;
		shadowMulti = abs(time - time_max/2)/(time_max/2);
		shadowAlpha = 0.4 + 0.2*shadowMulti;
		shadowSize = 0.4 + 0.25*shadowMulti;
		part_particles_create(dungeon.particleSystem, x, y, particle, 1);
		part_particles_create(dungeon.particleSystem, x, y, particle2, 1);
	}

	if (time <= 0 && instance_exists(source)) {
		var list = otherTeamList();	
		for(var i = 0; i < ds_list_size(list); i++) {
			var inst = ds_list_find_value(list, i);
			if (distanceFrom(inst) < radius) {
				damage(inst, dmg, true);
			}
		}
		instance_destroy();
	}
}