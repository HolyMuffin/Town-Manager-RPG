if (!global.pause && !dungeonPauseCheck()) {
	if (duration >= 0) {
		duration = max(0, duration-1);
	}
	if (!instance_exists(source) || duration == 0 || source.location == 1 || source.hp == 0)
		removeBuff(id);
}