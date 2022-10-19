event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

	image_index = 0;
	//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Gloves") {
			image_index = 5;
			
			if (!instance_exists(target) || !inRange(ds_list_find_index(skillName, "Gloves"))) {
				cancelSkill();
			} else {
				if (skillTimer >= 60 && skillTimer <= 100 && skillTimer%3 == 0) {
					var offset = -target.sprite_height/2+irandom(target.sprite_height-4)-2;
					var inst = createSubObject(target.x,target.y-target.sprite_height/2-offset, 0, anim_punch);
					inst.target = target;
					inst.xOffset = target.sprite_width/2-irandom(target.sprite_width);
					inst.yOffset = offset;
					//if (skillTimer%10 == 0)
					//	inst.image_yscale = -1;
				}
				if (skillTimer >= 55 && skillTimer <= 95 && skillTimer%5 == 0) {
					damage(target, atk*0.85, true);
				}
			}
		}
		
		if (currentSkill == "Gun") {
			if (skillTimer == 65)
				dodgeSelf(25);
		}
		
		if (currentSkill == "Shotgun") {
			image_index = 4;
			if (skillTimer == 50) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_shotgun);
				inst.dmg = atk*1.8;
				ds_list_copy(inst.targetList, dungeon.partyList_alive);	
			}
		}
		
		if (currentSkill == "Hammer") {
			image_index = 3;
			if (!instance_exists(target) || !inRange(ds_list_find_index(skillName, "Hammer"))) {
				cancelSkill();
			} else {
				if (skillTimer == 45) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_hammer);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*2;
				}
			}
		}
		
		if (currentSkill == "Sword") {
			image_index = 2;
			if (skillTimer == 50) {
				var inst = createSubObject(x,y-sprite_height/2, 0, anim_slice);
				inst.dmg = atk*2;
				ds_list_copy(inst.targetList, otherTeamList());	
			}
		}
		
		if (currentSkill == "Blades") {
			image_index = 1;
			if (!instance_exists(target) || !inRange(ds_list_find_index(skillName, "Blades"))) {
				cancelSkill();
			} else {
				for (var i = 0; i < 3; i++) {
					if (distanceFrom(target) > 70)
						moveToward(target.x+70*target.image_xscale, target.y);
				}
				if (skillTimer == 50) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_slash_targeted);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.5;
				}
			}
		}
	}
}