event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	dmgMulti = 1;
	if (location == 2 && dungeon.dungeonState == 2 && ds_list_size(dungeon.partyList_alive) == 1) {
		alone = true;
		decrementCooldown();
		healing(id, 0.007*hp_max/room_speed*(1+0.1*vitality), false);
		var dmgMulti = 1+2*skillScaling[1]/100;
		if (irandom(100) < 3*skillScaling[1])
			dmgMulti *= 2;
	}
	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "AOE Claw") {
			if (skillTimer == 35) {
				var inst = createSubObject(x,y+1, 0, anim_slash_Wendigo);
				inst.dmg = skillScaling[0]*atk/100*dmgMulti; 
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y,target.x,target.y);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}

		if (currentSkill == "Auto: Claw") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 35) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_claw);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.2*dmgMulti;
				}
			}
		}
	}
}
