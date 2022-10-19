event_inherited();
if (!global.pause && !dungeonPauseCheck()) {

//skills
	if (interruptTimer == 0) {
		
		if (currentSkill == "Shield") {
				if (skillTimer == 5) {
					for(var i = 0; i < ds_list_size(dungeon.partyList_alive); i++) {
						var ally = ds_list_find_value(dungeon.partyList_alive, i);
						inst = createSubObject(ally.x, ally.y, ally.depth, anim_shield);
						inst.target = ally;
						ally.shield += skillScaling[0]*ally.hp_max/100;
						if (ally.doofusSquad)
							ally.shield += skillScaling[0]*ally.hp_max*0.5/100;
					}
				}
		}

		if (currentSkill == "Auto: Bash") {
			if (!instance_exists(target) || !inRange(1)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_bash);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*1.8;
				}
			}
		}
	}
}
