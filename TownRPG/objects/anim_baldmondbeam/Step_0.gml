event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	if (instance_exists(source) && instance_exists(source.target) && source.currentSkill == "Baldmond Beam") {
		image_angle = point_direction(source.x, source.y, source.target.x, source.target.y);
		stretch = min(36, (150-source.skillTimer)/2);
		image_xscale = stretch;
		image_yscale = 1 + min(0.5, stretch/18);
		xOffset = 32*dcos(image_angle);
		yOffset = 32*dsin(image_angle);
	
	
		x = source.x + xOffset;
		y = source.y - source.sprite_height/2 - yOffset;
	} else if (!instance_exists(source) || source.currentSkill != "Baldmond Beam")
		instance_destroy();
}
depth = -room_height;