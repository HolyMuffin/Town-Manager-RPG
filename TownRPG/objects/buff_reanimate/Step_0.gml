event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	damage(source, source.hp_max/room_speed*decay, false);
	decay += 0.001;
}