event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {

		if (currentSkill == "Auto: Bash") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				if (skillTimer == 40) {
					var inst = createSubObject(target.x,target.y-target.sprite_height/2, 0, anim_bash);
					inst.target = target;
					inst.skill = currentSkill;
					inst.dmg = atk*(1.4+random(0.4));
				}
			}
		}
	}
}