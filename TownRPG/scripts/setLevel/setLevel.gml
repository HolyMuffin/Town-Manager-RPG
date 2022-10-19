function setLevel(objID, lvl) {
	with(objID) {
		level = lvl;
		xp = 0;
		updateBaseStats();
	}
}