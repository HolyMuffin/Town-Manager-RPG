//overrides parent here cuz parent doesnt quite work
if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	if (instance_exists(target)) {
		x = target.x;
		y = target.y;
	} else
		instance_destroy();

	depth = -y-1;

	if (counter % 8 == 0) {
		image_index++;
		if (image_index > image_number - 1) {
			instance_destroy();
		}
	}
}