event_inherited();
if (!global.pause && !dungeonPauseCheck() && instance_exists(source)) {

//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Slash") {
			if (!instance_exists(target) || !inRange(0)) {
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
	}
}
