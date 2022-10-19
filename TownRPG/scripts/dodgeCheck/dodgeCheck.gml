function dodgeCheck(target, dodgechance) {
	if (target.interruptTimer == 0 && random(1) > (1-dodgechance)) {
		target.interruptTimer = 18;
		target.dodgeTimer = 15;
		if (target.x < x)
			target.image_xscale = 1;
		if (target.x > x)
			target.image_xscale = -1;
		if (target.x > global.dungeonWidth-100)
			target.image_xscale = 1;
		if (target.x < 100)
			target.image_xscale = -1;
		return true;
	} else
		return false;
}