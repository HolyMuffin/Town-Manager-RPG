//not thoroughly tested since moving from step, note in case of bugs
if (!instance_exists(dungeon) || dungeon.dungeonState != 2)
	instance_destroy();
	
if (type == "follows target" && instance_exists(target)) {
	image_xscale = target.image_xscale;
	image_angle = target.image_angle;
	depth = target.depth - 1;
}