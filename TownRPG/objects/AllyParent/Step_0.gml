depth = -y;
if (!instance_exists(dungeon) || (dungeon.dungeonState != 2 && !persist))
	instance_destroy();
else if (!global.pause && !dungeonPauseCheck()) {
	combatEffects();
	persistentEffects();
	if (interruptTimer == 0 && dungeon.dungeonState == 2 && ds_list_size(otherTeamList()) > 0)
		combatAI();	
}