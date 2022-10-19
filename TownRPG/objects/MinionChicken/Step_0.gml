event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Peck") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				if (skillTimer == 20) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_peck);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk;
				}
			}
		}
	}
}