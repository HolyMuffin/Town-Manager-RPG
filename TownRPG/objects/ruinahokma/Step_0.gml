event_inherited();
if (!global.pause && !dungeonPauseCheck()) {	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Faith") {
			if (skillTimer == 1) {
				clockCounter = min(13, clockCounter+1);
				if (clockCounter == 13) {
					skillTimer = 0;
					dungeon.pause = true;
					doomCounter = 1;
				} else {
					var inst = createSubObject(x,y, depth-1, anim_heal_front);
					inst.target = id;
					var inst = createSubObject(x,y, depth-1, anim_heal_back);
					inst.target = id;
					healing(id, hp_max*0.3*healDecay, true);
					healDecay *= 0.8;
				} 
			}
		}
	}
}

if (!global.pause && instance_exists(dungeon) && dungeon.pause && doomCounter > 0) {
	doomCounter++;
	if (doomCounter == 300) {
		var list = otherTeamList();
		for(var i = 0; ds_list_size(list) > 0; i++) {
			var target_ = ds_list_find_value(list, 0);
			damage(target_, target_.hp_max, false);
		}
		dungeon.pause = false;
	}
}