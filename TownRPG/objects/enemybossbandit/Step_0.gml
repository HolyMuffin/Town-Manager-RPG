event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	if (phase == 0) {
		phase = 1;
		spawnMinion(x-50, y-70, Bandit_SwordMinion);
		spawnMinion(x-70, y, Bandit_SwordMinion);
		spawnMinion(x-50, y+70, Bandit_SwordMinion);
	}
	
	if (goonCount <= 1 && phase == 1) {
		phase = 2;
		goonCount += 3;
		spawnMinion(x-50, y-70, Bandit_SwordMinion);
		spawnMinion(x-70, y, Bandit_SwordMinion);
		spawnMinion(x-50, y+70, Bandit_SwordMinion);
	}
	
	if (goonCount <= 2 && phase == 2) {
		phase = 3;
		ds_list_set(skillName, 0, "Auto: AOE Slash");
		ds_list_set(skillCooldown_max, 0, 80);
		ds_list_set(skillTimer_max, 0, 60);
		ds_list_set(skillRange, 0, 80);
		ds_list_set(skillRange, 1, 80);		
		spawnMinion(x, y-50, Bandit_CrossbowMinion);
		spawnMinion(x, y+50, Bandit_CrossbowMinion);
		image_index = 1;
	}
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Rapid Fire") {
			if (skillTimer%8 == 0 && skillTimer > 30) {
				var inst = createSubObject(x,y-(sprite_height/2), 0, anim_arrow);
				inst.dmg = atk;
				inst.target = ds_list_find_value(otherTeamList(), irandom(ds_list_size(otherTeamList())-1));
			}
		}
		
		if (currentSkill == "Auto: AOE Slash") {
			if (skillTimer == 55) {
				var inst = createSubObject(x,y+1, 0, anim_slash_AoE);
				inst.dmg = atk*1.4;
				if (instance_exists(target)) {
					inst.image_angle = point_direction(x,y,target.x,target.y);
					if (inst.image_angle > 90 && inst.image_angle < 270)
						inst.image_yscale = -1;
				}
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}
	}
}