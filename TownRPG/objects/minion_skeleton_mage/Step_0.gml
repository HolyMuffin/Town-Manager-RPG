event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Bolt") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height*2/3), 0, anim_bolt);
				inst.dmg = atk*2.2;
				inst.image_blend = c_red;
				inst.target = target;
			}
		}
	}
}