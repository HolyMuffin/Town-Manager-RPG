if (!global.pause && !dungeonPauseCheck() && combatStart) {
	applyBuff(id, buff_DrawBurnAura);
}
event_inherited();
if (!global.pause && !dungeonPauseCheck() && dungeon != pointer_null && dungeon.dungeonState == 2 && hp > 0) {
	
	//Burn aura code
	//burn allies
	var list = ownTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var target_ = ds_list_find_value(list, i);
		if (distanceFrom(target_) < 90) {
			applyBurn(target_, skillScaling[1]*atk/100/room_speed);
			applyBuff(target_, buff_FernResist);
		}
	}
	//burn enemies
	var list = otherTeamList();
	for(var i = 0; i < ds_list_size(list); i++) {
		var target_ = ds_list_find_value(list, i);
		if (distanceFrom(target_) < 90) {
			applyBurn(target_, skillScaling[1]*1.7*atk/100/room_speed);
		}
	}
	
	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Overdrive") {
			applyBuff(id, buff_Overdrive, skillScaling[2]/100);
		}
		
		if (currentSkill == "AOE Slash") {
			if (skillTimer == 40) {
				var inst = createSubObject(x,y+1, 0, anim_slash_AoE);
				inst.dmg = skillScaling[0]*atk/100+burned*burnAsExtraDamage;
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y,target.x,target.y);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}

		if (currentSkill == "Auto: Slash") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_slash_targeted);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.2+burned*burnAsExtraDamage;
				}
			}
		}
	}
}
