event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "AOE Slash") {
			if (skillTimer == 50) {
				var inst = createSubObject(x,y+1, 0, anim_slash_AoE2);
				inst.dmg = skillScaling[0]*atk/100;
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y,target.x,target.y);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}

		if (currentSkill == "Auto: Pierce") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_pierce);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk;
					inst.image_angle = point_direction(x,y-sprite_height/2, target.x, target.y-target.sprite_height/2);
				}
			}
		}
	}
}
