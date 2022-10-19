depth = -y;
if (!instance_exists(dungeon))
	instance_destroy();
else if (!global.pause && !dungeonPauseCheck()) {
	combatEffects();
	persistentEffects();
}