if (location == 2 && instance_exists(dungeon) && (!variable_instance_exists(id, "spirit") || !instance_exists(spirit)) ) {
	spirit = instance_create_depth(x, y, depth, MinionSpirit);
	spirit.source = id;
	spirit.dungeon = dungeon;
}

event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "AOE Slash") {
			if (skillTimer == 50) {
				var inst = createSubObject(x,y+1, 0, anim_slash_AoE);
				inst.dmg = atk;
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
					inst.dmg = atk*2;
				}
			}
		}
		
		if (currentSkill == "Wait" && hp <= hp_max/3) {
			changeSkill("Recover");
		}
		
		if (currentSkill == "Recover") {
			if (skillTimer == 101)
				dodgeSelf(22);
			if (skillTimer <= 100 && skillTimer%2 == 0)
				healing(id, hp_max/100, false);
		}
	}
}
