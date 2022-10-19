event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	image_xscale += xSign*0.034;
	image_yscale += 0.034;
	if (instance_exists(source) && instance_exists(target)) {
		if (abs(image_xscale) >= 1) {
			damage(target, dmg, true);
			instance_destroy();
		}
	} else
		instance_destroy();
}