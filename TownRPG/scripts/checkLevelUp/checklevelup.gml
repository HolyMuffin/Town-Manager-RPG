function checkLevelUp() { //updates level if enough exp to level up
	calcXPReq();
	while (level < global.maxlevel && xp > xpReq) {
		xp -= xpReq;
		level++;
		updateBaseStats();
		if (level == global.maxlevel)
			xp = 0;
	}
}