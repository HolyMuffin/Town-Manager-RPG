function sidestepCheck(target, dodgechance) {
	if (target.interruptTimer == 0 && random(1) > (1-dodgechance)) {
		target.interruptTimer = 18;
		target.sidestepTimer = 15;
		if (target.y < target.dungeon.y+global.dungeonHeight_Sky+60) 
			target.sidestepDirection = 1;
		else if (target.y > target.dungeon.y+global.dungeonHeight-60) 
			target.sidestepDirection = -1;
		else
			target.sidestepDirection = choose(-1, 1);	
		return true;
	} else
		return false;
}