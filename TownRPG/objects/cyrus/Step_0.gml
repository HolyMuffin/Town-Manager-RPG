if (!global.pause && !dungeonPauseCheck() && dungeon != pointer_null && dungeon.dungeonState == 2)
	faith += hitsTaken;
event_inherited();
if (!global.pause && !dungeonPauseCheck() && dungeon != pointer_null && dungeon.dungeonState == 2 && hp > 0) {
	//faith passive code
	faithCounter = min(room_speed*3, faithCounter+1);
	if (faithCounter == room_speed*3 && faith > 0) { //faith trigger
		faithCounter = 0;
		//target lowest health ally
		var target_;
		var lowestHP = 1.01;
		var list = ownTeamList();
		for(var i = 0; i < ds_list_size(list); i++) {
			inst = ds_list_find_value(list, i);
			var hppercent = inst.hp/inst.hp_max;
			if (hppercent < lowestHP) {
				target_ = inst;
				lowestHP = hppercent;
			}
		}
		var inst = createSubObject(x,y, depth-1, anim_heal_front);
		inst.target = target_;
		var inst = createSubObject(x,y, depth-1, anim_heal_back);
		inst.target = target_;
		healing(target_, skillScaling[2]*def/100*(1+0.3*faith), true);
		faith = 0;
	}

	//radiance aura code
	if (radianceCounter > 0) {
		var list = ownTeamList();
		for(var i = 0; i < ds_list_size(list); i++) {
			var target_ = ds_list_find_value(list, i);
			if (distanceFrom(target_) < 80) {
				healing(target_, skillScaling[1]*def/100/room_speed, false);
				applyBuff(target_, buff_RadianceAura);
			}
		}
		radianceCounter--;
	}
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Shield Push") {
				if (skillTimer == 30) {
					var inst = createSubObject(x,y-sprite_height/2, 0, anim_shieldpush);
					inst.dmg = skillScaling[0]*(atk+def)/100;
					ds_list_copy(inst.targetList, otherTeamList());	
				}
		}
		
		if (currentSkill == "Radiance") {
			radianceCounter = 5*room_speed;
		}

		if (currentSkill == "Auto: Slash") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_slash_targeted);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.4;
				}
			}
		}
	}
}
