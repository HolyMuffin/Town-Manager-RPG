function dodgeSelf(dodgeDuration) {
	if (interruptTimer == 0) {
		interruptTimer = dodgeDuration+3;
		dodgeTimer = dodgeDuration;
	}
	if (x > global.dungeonWidth-100)
		image_xscale = 1;
	if (x < 100)
		image_xscale = -1;
}
