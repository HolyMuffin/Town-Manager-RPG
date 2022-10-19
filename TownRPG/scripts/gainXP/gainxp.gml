function gainXP(character, xp_) {
	with (character) {
		if (level < global.maxlevel) {
			xp += xp_;
			checkLevelUp(); //check for levelup
		}
	}
}