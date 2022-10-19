if(!instance_exists(dungeon))
	instance_destroy();

if (!global.pause && !dungeonPauseCheck()) {
	if (dungeon.dungeonState == 1)
		x -= dungeon.dungeonSpeed;
	if (dungeon.walkTimer == 0 && counter == 0)
		dungeon.pause = true;
	//if (counter == 560 && !instance_exists(boss)) what does this do?
	//	instance_destroy();
}

if (!global.pause && dungeonPauseCheck()) {
	counter++; 
	if (counter == 500) 
		sprite_index = SpriteCoffinOpen;
	if (counter == 600) {
		//var depth_ = depth-1;
		var inst = 0;
		var x_ = x;
		var y_ = y;
		with (dungeon) {
			inst = spawnEnemy(x_, y_+1, EnemyBossThrall);
			boss = inst;
		}
		boss = inst;
	}
	if (counter == 780)
		dungeon.pause = false;
	
	if (counter >= 650)
		image_alpha = max(0, (770-counter)/120);
}