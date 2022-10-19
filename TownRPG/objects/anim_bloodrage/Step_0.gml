event_inherited();

if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	
	if (counter%room_speed == 0) {
		applyBuff(source, buff_Ichor);
	}
	
	if (counter >= duration)
		instance_destroy();
}