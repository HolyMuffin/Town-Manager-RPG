event_inherited();
if (!global.pause && !dungeonPauseCheck() && instance_exists(source))
	damage(source, source.hp/500/room_speed, false);
