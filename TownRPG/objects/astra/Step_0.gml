if (!global.pause && !dungeonPauseCheck() && combatStart) {
	//reset cooldowns
	ds_list_set(skillCooldown, ds_list_find_index(skillName, "Team Shift"), 0);
	ds_list_set(skillCooldown, ds_list_find_index(skillName, "Swap Shift"), 0);
}

event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Team Shift") {
			//shift melee units forward, buff ranged units
			if (skillTimer == 10) {
				var list = ownTeamList();
				for(var i = 0; i < ds_list_size(list); i++) {
					var unit = ds_list_find_value(list, i);
					if (unit.range = "Melee")
						shift(unit, unit.x+120*unit.image_xscale, unit.y, c_blue);
					if (unit.range = "Ranged")
						applyBuff(unit, buff_Astra, skillScaling[1]);
				}
			}
		}
		
		if (currentSkill == "Swap Shift") {
			//swap closest and furthest enemy
			if (skillTimer == 10) {
				var list = otherTeamList();
				var nearest = getNearestEnemy();
				var furthest = getFurthestEnemy();
				applyBuff(nearest, debuff_Weaken, skillScaling[0]);
				applyBuff(furthest, debuff_Weaken, skillScaling[0]);
				var x2 = nearest.x;
				var y2 = nearest.y;
				shift(nearest, furthest.x, furthest.y, c_red, 30);
				if (instance_exists(furthest))
					shift(furthest, x2, y2, c_fuchsia, 30);
			}
		}
		
		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), -1, anim_bolt);
				inst.dmg = atk*1.2;
				inst.target = target;
				inst.image_blend = make_color_rgb(255, 230, 180);
			}
		}
	}
}
