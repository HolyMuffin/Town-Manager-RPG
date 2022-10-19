if(!instance_exists(dungeon))
	instance_destroy();

if (!global.pause && !dungeonPauseCheck()) {
	if (dungeon.dungeonState == 1)
		x -= dungeon.dungeonSpeed;
//	if (counter == 360 && !instance_exists(boss)) //what does this do?
//		instance_destroy();
}

if (!global.pause && dungeonPauseCheck()) {
	counter++; 
	if (counter == 350) {
		sprite_index = SpriteCultist;
		image_xscale = 1;
		speed = 1;
	}
}