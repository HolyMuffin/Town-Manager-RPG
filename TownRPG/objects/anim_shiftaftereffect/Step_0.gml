if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	if (instance_exists(target)) {
		x = target.x;
		y = target.y-target.sprite_height/2;
		depth = -target.y-1;
		target.image_blend = image_blend;

		target.tpCounter = 100*(1-counter/tpTime);
		
		image_xscale = counter/tpTime;
		image_yscale = 1.5 - 0.5*counter/tpTime;
		if (counter == tpTime) {
			instance_destroy();
		}
	} else
		instance_destroy();
	
	
}