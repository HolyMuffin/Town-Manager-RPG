event_inherited();

if (!global.pause && !dungeonPauseCheck()) {
	counter++;
	image_index = min(floor(counter/4), image_number-1); 
	if (counter >= 4*(image_number*4))
		image_alpha *= 1-(counter/duration)/10;
	if (counter >= duration)
		instance_destroy();
}