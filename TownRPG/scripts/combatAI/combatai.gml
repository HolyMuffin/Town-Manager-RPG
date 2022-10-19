function combatAI() {
	if (combatStart) {
		updateBaseStats();
		reanimated = false;
		tauntTarget = -1;
		momentum_current = momentum;
		frenzyStacks = 0;
		precisionStacks = 0;
		combatStart = false;
	}
	
//	if (instance_exists(tauntTarget) && tauntTarget.hp > 0)
//		target = tauntTarget;
//	else {
//		tauntTarget = -1;
		target = getNearestEnemy();
//	}
	
	decrementCooldown();
	
	if (target.x > x)
		image_xscale = 1;
	if (target.x < x)
		image_xscale = -1;
		
	if (currentSkill == -1) {
		for (var i = 0; i < skillCount; i++) {
			if(inRange(i) && ds_list_find_value(skillCooldown, i) == 0) {
				currentSkill = ds_list_find_value(skillName, i);
				skillTimer = ds_list_find_value(skillTimer_max, i);
				break;
			}
		}
		if (currentSkill == -1)
			moveToward(target.x, target.y);
	} else
		skillTimer = max(0, skillTimer-1);
	
	
	if (skillTimer == 0 && currentSkill != -1) { //skill just finished casting
		var index = ds_list_find_index(skillName, currentSkill);
		ds_list_set(skillCooldown, index, ds_list_find_value(skillCooldown_max, index));
		currentSkill = -1;
	}
}