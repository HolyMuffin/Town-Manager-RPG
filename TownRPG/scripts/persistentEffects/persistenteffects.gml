function persistentEffects() {
	depth = -y;
	updateInterruptTimers();
	dodgeAnimation();
	knockAnimation();
	if (interruptTimer == 0 && image_angle != 0 && tenacity != 100) { //righting self after a knock
		image_angle = 0;
		x -= sprite_height/2;
	}
	transparency();

	//blend effects
	imageBlend();
	damagedCounter = max(0, damagedCounter-1);
	healedCounter = max(0, healedCounter-1);
	defendCounter = max(0, defendCounter-1);
	frostedCounter = max(0, frostedCounter-1);
	//counter for town effects
	if (location == 1)
		townCounter = (townCounter+1)%3000;
}