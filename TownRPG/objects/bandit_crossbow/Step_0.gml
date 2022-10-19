event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Crossbow") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height*2/3), 0, anim_arrow);
				inst.dmg = atk*2;
				inst.target = target;
			}
		}
	}
}