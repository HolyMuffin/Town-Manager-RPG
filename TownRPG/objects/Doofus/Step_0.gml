event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Spin to Win") {
			
			spinCounter++;
			if (spinCounter > 20 && spinCounter%20 == 0) {
				spinHDirection = image_xscale*(random(0.7)-0.5);
				spinVDirection = random(1)-0.5;
			}
			//initialize spin
			if (skillTimer == 190) {
				spinCounter = 0;
				spinHDirection = image_xscale*0.7;
				spinVDirection = 0;
				var inst = createSubObject(x,y+1, 0, anim_spintowin);
				inst.target = id;
				inst.dmg = skillScaling[0]*atk/100;
				ds_list_copy(inst.targetList, otherTeamList());	
			}
			//move while spinning
			if (instance_exists(target) && skillTimer < 190) {
				if (inRange(0)) {
					x = min(target.x+77, max(target.x-77, x + spinHDirection));
					y = min(target.y+77, max(target.y-77, y + spinVDirection)); 
				} else {
					moveToward(target.x, target.y);
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
					inst.dmg = atk;
				}
			}
		}
	}
}

