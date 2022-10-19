if (!global.pause && !dungeonPauseCheck()) {
	if (time > 0) {
		time--;
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
		var list = otherTeamList();	
		for(var i = 0; i < ds_list_size(list); i++) {
			var inst = ds_list_find_value(list, i);
			if (distanceFrom(inst) < 80) {
				applyPoison(inst, poison);
				damage(inst, dmg, true);
			}
		}
		instance_destroy();
	}
	image_angle += 6;
}