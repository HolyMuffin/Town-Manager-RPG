if (location == 2 && instance_exists(dungeon) && dungeon.dungeonState == 2 && combatStart) {
	damage(id, 0, false);
	var highestATK = 0;
	var list = ownTeamList();
	if (ds_list_size(list) > 0) {
		var target = ds_list_find_value(list, 0);
		for(var i = 0; i < ds_list_size(list); i++) {
			var unit = ds_list_find_value(list, i);
			if (unit.atk > highestATK) {
				target = unit;
				highestATK = unit.atk;
			}
		}
		applyBuff_Willow(target);
		//combatStart = false; note: why would i need to do this? 
	}
}
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		
	}
}