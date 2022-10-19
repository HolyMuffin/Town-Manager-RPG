event_inherited();
if (!global.pause && !dungeonPauseCheck() && instance_exists(source))
	applyBurn(source, 0.05*source.hp/room_speed, false);
