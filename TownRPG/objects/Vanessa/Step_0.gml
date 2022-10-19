event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Blood Rage") {
			if (skillTimer == 25) {
				var inst = createSubObject(x, y, depth, anim_bloodrage);
				inst.target = id;
				inst.duration = skillScaling[1]*room_speed;
			}
		}
		
		if (currentSkill == "Axe Throw/Slash") {
			if (skillTimer == 55) { 
				if (distanceFrom(target) <= 85)
					skillChoice = "AOE Slash";
				else
					skillChoice = "Axe Throw";
			}
			
			if (skillChoice == "Axe Throw") {
				if (skillTimer == 45 && instance_exists(target)) {
					var inst = createSubObject(x,y-(sprite_height*2/3), 0, anim_AxeThrow);
					inst.dmg = skillScaling[0]*atk/100;
					inst.target = target;
				}
			}
		
			if (skillChoice == "AOE Slash") {
				if (skillTimer == 50) {
					var inst = createSubObject(x,y-sprite_height/2, 0, anim_slash_Berserker);
					inst.dmg = skillScaling[0]*atk/100;
					if (instance_exists(target)) {
						inst.image_angle = point_direction(x,y,target.x,target.y);
						if (inst.image_angle > 90 && inst.image_angle < 270)
							inst.image_yscale = -1;
					}
					ds_list_copy(inst.targetList, otherTeamList());
					
					shield += hp/20;
					hp *= 0.95;
				}
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
					inst.dmg = atk*1.5;
					shield += hp/20;
					hp *= 0.95;
				}
			}
		}
	}
}
