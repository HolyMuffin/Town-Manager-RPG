if (!global.pause && !dungeonPauseCheck()) {
	time--;
	if (time > 0) {
		x += hSpd;
		y += vSpd; // backwards cuz y axis is flipped
		vSpd -= grav;
		//image_angle = point_direction(0, 0, hSpd, vSpd);
		shadowY += shadowSpd;
		shadowMulti = abs(time - time_max/2)/(time_max/2);
		shadowAlpha = 0.4 + 0.2*shadowMulti;
		shadowSize = 0.4 + 0.25*shadowMulti;
	}



	//differences
	if (time <= 0) {
		part_particles_create(dungeon.particleSystem, x+random(60)-30, y, particle, irandom(1));
		var list = otherTeamList();	
		for(var i = 0; i < ds_list_size(list); i++) {
			var inst = ds_list_find_value(list, i);
			if (distanceFrom(inst) < 80)
				if (ignited)
					applyBurn(inst, poison + burn + 0.002*inst.burned);
				else {
					if (inst.burned >= inst.hp_max/500) {
						ignited = true;
						part_type_color1(particle, c_orange);
					}
					applyPoison(inst, poison + 0.002*inst.poisoned);
				}
		}
	}
	if (time <= -tickCount || dungeon.dungeonState == 1)
		instance_destroy();
	image_angle += 6;
}