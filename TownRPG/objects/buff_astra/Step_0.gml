event_inherited();
if (!global.pause && !dungeonPauseCheck() && instance_exists(source))
	if (source.hp/source.hp_max <= 0.4) {
		shift(source, global.dungeonWidth-source.x, source.y, c_green);
		removeBuff(id);
	}
