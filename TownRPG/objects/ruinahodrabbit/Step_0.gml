event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {
		if (currentSkill == "Auto: Bullet") {
			if (skillTimer == 1 && instance_exists(target)) {
				var inst = createSubObject(x,y-(sprite_height/2), 0, anim_bolt);
				inst.dmg = atk*1.2;
				inst.target = target;
				inst.image_blend = c_black;
			}
		}
	}
}