function conditionalSkill_Shadowstep() { //at start of combat: jump to furthest enemy
	
	//triggering the condition
	if (combatStart)
		shadowstep_charge = true;

	if (location == 2 && dungeon.dungeonState == 2 && skillTimer == 0) {
		if (shadowstep_charge && ds_list_find_index(skillName, "Shadowstep") == -1) { //when not in list + havent used
			ds_list_insert(skillName, 0, "Shadowstep");//add to skill list
			ds_list_insert(skillCooldown_max, 0, 3);
			ds_list_insert(skillCooldown, 0, 3);
			ds_list_insert(skillTimer_max, 0, 3);
			ds_list_insert(skillRange, 0, 85);
			skillCount++;
		} else if (!shadowstep_charge) { //when in list + already used
			var num = ds_list_find_index(skillName, "Shadowstep"); //delete from skill list
			if (num != -1 && ds_list_find_value(skillCooldown, num) == 0) {
				ds_list_delete(skillName, num);
				ds_list_delete(skillCooldown_max, num);
				ds_list_delete(skillCooldown, num);
				ds_list_delete(skillTimer_max, num);
				ds_list_delete(skillRange, num);
				skillCount--;
			}
		}
	}
/*
	//using the skill
	if (currentSkill == "Shadowstep") {
		if (skillTimer == 1) {
			var furthest = ds_list_find_value(dungeon.enemyList, 0);
			for (var i = 1; i < ds_list_size(dungeon.enemyList); i++)
				if (distanceFrom(furthest)<distanceFrom(ds_list_find_value(dungeon.enemyList, i)))
					furthest = ds_list_find_value(dungeon.enemyList, i);
			stun(furthest, 200);
			x = furthest.x-50*furthest.image_xscale;
			y = furthest.y;		
			shadowstep_charge = false;
		}
	}/**/
}