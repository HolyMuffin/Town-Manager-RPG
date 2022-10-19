event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	if (counter%20==0|| counter>50)
		accel += 0.01;
	spd += accel;
	depth = -y-40;
}