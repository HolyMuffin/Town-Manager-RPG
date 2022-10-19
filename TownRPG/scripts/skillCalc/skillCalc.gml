function skillCalc(skillNum) {
	return skillBase[skillNum]+skillLevel[skillNum]*skillGrowth[skillNum];
}